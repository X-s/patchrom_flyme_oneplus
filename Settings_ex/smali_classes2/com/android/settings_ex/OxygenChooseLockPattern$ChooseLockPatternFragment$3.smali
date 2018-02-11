.class Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$3;
.super Ljava/lang/Object;
.source "OxygenChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 448
    :goto_0
    return v2

    .line 441
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get0(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 445
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment$3;->this$1:Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;->-get0(Lcom/android/settings_ex/OxygenChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
