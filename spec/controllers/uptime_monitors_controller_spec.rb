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

describe UptimeMonitorsController do

  # This should return the minimal set of attributes required to create a valid
  # UptimeMonitor. As you add validations to UptimeMonitor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UptimeMonitorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all uptime_monitors as @uptime_monitors" do
      uptime_monitor = UptimeMonitor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:uptime_monitors).should eq([uptime_monitor])
    end
  end

  describe "GET show" do
    it "assigns the requested uptime_monitor as @uptime_monitor" do
      uptime_monitor = UptimeMonitor.create! valid_attributes
      get :show, {:id => uptime_monitor.to_param}, valid_session
      assigns(:uptime_monitor).should eq(uptime_monitor)
    end
  end

  describe "GET new" do
    it "assigns a new uptime_monitor as @uptime_monitor" do
      get :new, {}, valid_session
      assigns(:uptime_monitor).should be_a_new(UptimeMonitor)
    end
  end

  describe "GET edit" do
    it "assigns the requested uptime_monitor as @uptime_monitor" do
      uptime_monitor = UptimeMonitor.create! valid_attributes
      get :edit, {:id => uptime_monitor.to_param}, valid_session
      assigns(:uptime_monitor).should eq(uptime_monitor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UptimeMonitor" do
        expect {
          post :create, {:uptime_monitor => valid_attributes}, valid_session
        }.to change(UptimeMonitor, :count).by(1)
      end

      it "assigns a newly created uptime_monitor as @uptime_monitor" do
        post :create, {:uptime_monitor => valid_attributes}, valid_session
        assigns(:uptime_monitor).should be_a(UptimeMonitor)
        assigns(:uptime_monitor).should be_persisted
      end

      it "redirects to the created uptime_monitor" do
        post :create, {:uptime_monitor => valid_attributes}, valid_session
        response.should redirect_to(UptimeMonitor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved uptime_monitor as @uptime_monitor" do
        # Trigger the behavior that occurs when invalid params are submitted
        UptimeMonitor.any_instance.stub(:save).and_return(false)
        post :create, {:uptime_monitor => {}}, valid_session
        assigns(:uptime_monitor).should be_a_new(UptimeMonitor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UptimeMonitor.any_instance.stub(:save).and_return(false)
        post :create, {:uptime_monitor => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested uptime_monitor" do
        uptime_monitor = UptimeMonitor.create! valid_attributes
        # Assuming there are no other uptime_monitors in the database, this
        # specifies that the UptimeMonitor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UptimeMonitor.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => uptime_monitor.to_param, :uptime_monitor => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested uptime_monitor as @uptime_monitor" do
        uptime_monitor = UptimeMonitor.create! valid_attributes
        put :update, {:id => uptime_monitor.to_param, :uptime_monitor => valid_attributes}, valid_session
        assigns(:uptime_monitor).should eq(uptime_monitor)
      end

      it "redirects to the uptime_monitor" do
        uptime_monitor = UptimeMonitor.create! valid_attributes
        put :update, {:id => uptime_monitor.to_param, :uptime_monitor => valid_attributes}, valid_session
        response.should redirect_to(uptime_monitor)
      end
    end

    describe "with invalid params" do
      it "assigns the uptime_monitor as @uptime_monitor" do
        uptime_monitor = UptimeMonitor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UptimeMonitor.any_instance.stub(:save).and_return(false)
        put :update, {:id => uptime_monitor.to_param, :uptime_monitor => {}}, valid_session
        assigns(:uptime_monitor).should eq(uptime_monitor)
      end

      it "re-renders the 'edit' template" do
        uptime_monitor = UptimeMonitor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UptimeMonitor.any_instance.stub(:save).and_return(false)
        put :update, {:id => uptime_monitor.to_param, :uptime_monitor => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested uptime_monitor" do
      uptime_monitor = UptimeMonitor.create! valid_attributes
      expect {
        delete :destroy, {:id => uptime_monitor.to_param}, valid_session
      }.to change(UptimeMonitor, :count).by(-1)
    end

    it "redirects to the uptime_monitors list" do
      uptime_monitor = UptimeMonitor.create! valid_attributes
      delete :destroy, {:id => uptime_monitor.to_param}, valid_session
      response.should redirect_to(uptime_monitors_url)
    end
  end

end
