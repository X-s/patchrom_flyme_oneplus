.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;
.super Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3046
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 3046
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 3048
    invoke-super {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->handleMessage(Landroid/os/Message;)V

    .line 3049
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3078
    :goto_0
    return-void

    .line 3051
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0

    .line 3054
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    goto :goto_0

    .line 3057
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 3060
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3063
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3064
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3067
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3068
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3071
    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 3072
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    goto :goto_0

    .line 3075
    :sswitch_7
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$H;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onLaunchTransitionTimeout()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 3049
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_7
        0x404 -> :sswitch_3
        0x405 -> :sswitch_5
        0x406 -> :sswitch_6
        0x407 -> :sswitch_4
    .end sparse-switch
.end method
