.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 469
    .local v0, "userSetup":Z
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$102(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 471
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mUserSetup:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapseQuickSettings()V

    .line 474
    :cond_1
    return-void
.end method
