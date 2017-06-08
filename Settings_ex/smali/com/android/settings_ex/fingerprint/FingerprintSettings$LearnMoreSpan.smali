.class Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;
.super Landroid/text/style/URLSpan;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LearnMoreSpan"
.end annotation


# static fields
.field private static final TYPEFACE_MEDIUM:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 729
    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method public static linkify(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "rawText"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 756
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 757
    .local v7, "msg":Landroid/text/SpannableString;
    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v11

    const-class v12, Landroid/text/Annotation;

    invoke-virtual {v7, v10, v11, v12}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/Annotation;

    .line 758
    .local v8, "spans":[Landroid/text/Annotation;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 759
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    move-object v1, v8

    .local v1, "arr$":[Landroid/text/Annotation;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 760
    .local v0, "annotation":Landroid/text/Annotation;
    invoke-virtual {v7, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 761
    .local v9, "start":I
    invoke-virtual {v7, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 762
    .local v3, "end":I
    new-instance v6, Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;

    invoke-direct {v6, p1}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;-><init>(Ljava/lang/String;)V

    .line 763
    .local v6, "link":Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;
    invoke-virtual {v7, v6}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v2, v6, v9, v3, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 759
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 765
    .end local v0    # "annotation":Landroid/text/Annotation;
    .end local v3    # "end":I
    .end local v6    # "link":Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;
    .end local v9    # "start":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 739
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settings_ex/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 741
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "FingerprintSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Actvity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 750
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 752
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintSettings$LearnMoreSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 753
    return-void
.end method
