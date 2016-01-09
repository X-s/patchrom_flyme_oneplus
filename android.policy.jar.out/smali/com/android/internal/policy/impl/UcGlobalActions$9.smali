.class Lcom/android/internal/policy/impl/UcGlobalActions$9;
.super Landroid/telephony/PhoneStateListener;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$000(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1168
    .local v0, "inAirplaneMode":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    :goto_2
    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$402(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 1169
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1600(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$400(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)V

    .line 1174
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1700(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$800(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1167
    .end local v0    # "inAirplaneMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1168
    .restart local v0    # "inAirplaneMode":Z
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    goto :goto_2
.end method
