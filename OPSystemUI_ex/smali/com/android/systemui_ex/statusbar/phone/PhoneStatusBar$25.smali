.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V
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
    .line 2408
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2412
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2415
    :cond_0
    return-void
.end method
