.class Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$3;
.super Ljava/lang/Object;
.source "ApplockerConfirmComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method
