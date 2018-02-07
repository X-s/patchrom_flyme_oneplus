.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

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

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return v2

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get0(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get0(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
