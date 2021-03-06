class BeatsController < ProtectedController
  before_action :set_beat, only: [:show, :update, :destroy]

  # GET /beats
  # GET /beats.json
  def index
    @beats = current_user.beats

    render json: @beats
  end

  # GET /beats/1
  # GET /beats/1.json
  def show
    @beats = current_user.beats.find(params[:id])
    render json: Beat.find(params[:id])
  end

  # POST /beats
  # POST /beats.json
  def create
    @beat = current_user.beats.build(beat_params)

    if @beat.save
      render json: @beat, status: :created, location: @beat
    else
      render json: @beat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beats/1
  # PATCH/PUT /beats/1.json
  def update
    @beat = current_user.beats.find(params[:id])

    if @beat.update(beat_params)
      head :no_content
    else
      render json: @beat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beats/1
  # DELETE /beats/1.json
  def destroy
    @beat.destroy

    head :no_content
  end

  private

  def set_beat
    @beat = current_user.beats.find(params[:id])
  end

  def beat_params
    params.require(:beat).permit(:name, :kick, :snare, :hatClose, :hatOpen, :clap, :user_id)
  end
end
