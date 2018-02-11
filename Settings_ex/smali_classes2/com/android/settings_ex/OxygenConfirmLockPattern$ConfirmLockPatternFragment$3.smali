.class Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$3;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRowTranslationScale(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "numRows"    # I

    .prologue
    .line 170
    sub-int v0, p2, p1

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method
