.class public Lcom/oppo/tribune/ui/CustomToast;
.super Landroid/widget/Toast;
.source "CustomToast.java"


# static fields
.field private static mToast:Lcom/oppo/tribune/ui/CustomToast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomToast;->cancel()V

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    .line 55
    :cond_0
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/oppo/tribune/ui/CustomToast;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/CustomToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    .line 41
    :cond_0
    sget-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/ui/CustomToast;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    invoke-virtual {v0, p2}, Lcom/oppo/tribune/ui/CustomToast;->setDuration(I)V

    .line 43
    sget-object v0, Lcom/oppo/tribune/ui/CustomToast;->mToast:Lcom/oppo/tribune/ui/CustomToast;

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strid"    # I

    .prologue
    .line 58
    if-lez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_0
    return-void
.end method
