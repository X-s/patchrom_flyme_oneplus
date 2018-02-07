.class public Lcom/android/setupwizardlib/span/LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "LinkSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkSpan"

.field private static final TYPEFACE_MEDIUM:Landroid/graphics/Typeface;


# instance fields
.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/setupwizardlib/span/LinkSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/setupwizardlib/span/LinkSpan;->mId:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/setupwizardlib/span/LinkSpan;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    if-eqz v1, :cond_1

    .line 68
    check-cast v0, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;

    .end local v0    # "context":Landroid/content/Context;
    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;->onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const-string/jumbo v1, "LinkSpan"

    const-string/jumbo v2, "Dropping click event. No listener attached."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "drawState"    # Landroid/text/TextPaint;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 81
    sget-object v0, Lcom/android/setupwizardlib/span/LinkSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 78
    return-void
.end method
