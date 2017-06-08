.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$4;
.super Ljava/lang/Object;
.source "ApplockerConfirmPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$4;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 406
    return-void
.end method
