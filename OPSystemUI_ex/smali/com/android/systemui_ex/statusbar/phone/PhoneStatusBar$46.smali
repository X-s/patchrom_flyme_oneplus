.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 5768
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5770
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsHighlightAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9802(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5771
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNeedToPendingHiding:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5772
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mNeedToPendingHiding:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5773
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideHighlightHintOnStatusBar()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 5775
    :cond_0
    return-void
.end method
