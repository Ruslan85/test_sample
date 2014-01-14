require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MicropostsController do

  # This should return the minimal set of attributes required to create a valid
  # Micropost. As you add validations to Micropost, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "email" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MicropostsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all microposts as @microposts" do
      micropost = Micropost.create! valid_attributes
      get :index, {}, valid_session
      assigns(:microposts).should eq([micropost])
    end
  end

  describe "GET show" do
    it "assigns the requested micropost as @micropost" do
      micropost = Micropost.create! valid_attributes
      get :show, {:id => micropost.to_param}, valid_session
      assigns(:micropost).should eq(micropost)
    end
  end

  describe "GET new" do
    it "assigns a new micropost as @micropost" do
      get :new, {}, valid_session
      assigns(:micropost).should be_a_new(Micropost)
    end
  end

  describe "GET edit" do
    it "assigns the requested micropost as @micropost" do
      micropost = Micropost.create! valid_attributes
      get :edit, {:id => micropost.to_param}, valid_session
      assigns(:micropost).should eq(micropost)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Micropost" do
        expect {
          post :create, {:micropost => valid_attributes}, valid_session
        }.to change(Micropost, :count).by(1)
      end

      it "assigns a newly created micropost as @micropost" do
        post :create, {:micropost => valid_attributes}, valid_session
        assigns(:micropost).should be_a(Micropost)
        assigns(:micropost).should be_persisted
      end

      it "redirects to the created micropost" do
        post :create, {:micropost => valid_attributes}, valid_session
        response.should redirect_to(Micropost.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved micropost as @micropost" do
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost.any_instance.stub(:save).and_return(false)
        post :create, {:micropost => { "email" => "invalid value" }}, valid_session
        assigns(:micropost).should be_a_new(Micropost)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost.any_instance.stub(:save).and_return(false)
        post :create, {:micropost => { "email" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested micropost" do
        micropost = Micropost.create! valid_attributes
        # Assuming there are no other microposts in the database, this
        # specifies that the Micropost created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Micropost.any_instance.should_receive(:update_attributes).with({ "email" => "MyString" })
        put :update, {:id => micropost.to_param, :micropost => { "email" => "MyString" }}, valid_session
      end

      it "assigns the requested micropost as @micropost" do
        micropost = Micropost.create! valid_attributes
        put :update, {:id => micropost.to_param, :micropost => valid_attributes}, valid_session
        assigns(:micropost).should eq(micropost)
      end

      it "redirects to the micropost" do
        micropost = Micropost.create! valid_attributes
        put :update, {:id => micropost.to_param, :micropost => valid_attributes}, valid_session
        response.should redirect_to(micropost)
      end
    end

    describe "with invalid params" do
      it "assigns the micropost as @micropost" do
        micropost = Micropost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost.any_instance.stub(:save).and_return(false)
        put :update, {:id => micropost.to_param, :micropost => { "email" => "invalid value" }}, valid_session
        assigns(:micropost).should eq(micropost)
      end

      it "re-renders the 'edit' template" do
        micropost = Micropost.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Micropost.any_instance.stub(:save).and_return(false)
        put :update, {:id => micropost.to_param, :micropost => { "email" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested micropost" do
      micropost = Micropost.create! valid_attributes
      expect {
        delete :destroy, {:id => micropost.to_param}, valid_session
      }.to change(Micropost, :count).by(-1)
    end

    it "redirects to the microposts list" do
      micropost = Micropost.create! valid_attributes
      delete :destroy, {:id => micropost.to_param}, valid_session
      response.should redirect_to(microposts_url)
    end
  end

end
