.class public Lcom/android/setupwizardlib/span/SpanHelper;
.super Ljava/lang/Object;
.source "SpanHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "oldSpan"    # Ljava/lang/Object;
    .param p2, "newSpan"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 32
    .local v1, "spanStart":I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 33
    .local v0, "spanEnd":I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 34
    const/4 v2, 0x0

    invoke-interface {p0, p2, v1, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 30
    return-void
.end method
