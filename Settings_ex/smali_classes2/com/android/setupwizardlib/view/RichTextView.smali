.class public Lcom/android/setupwizardlib/view/RichTextView;
.super Landroid/widget/TextView;
.source "RichTextView.java"


# static fields
.field private static final ANNOTATION_LINK:Ljava/lang/String; = "link"

.field private static final ANNOTATION_TEXT_APPEARANCE:Ljava/lang/String; = "textAppearance"

.field private static final TAG:Ljava/lang/String; = "RichTextView"


# instance fields
.field private mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/RichTextView;->init()V

    .line 95
    return-void
.end method

.method public static getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 61
    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_4

    .line 62
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v3, "spannable":Landroid/text/SpannableString;
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v9

    const-class v10, Landroid/text/Annotation;

    invoke-virtual {v3, v8, v9, v10}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/Annotation;

    .line 64
    .local v4, "spans":[Landroid/text/Annotation;
    array-length v9, v4

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v2, v4, v8

    .line 65
    .local v2, "span":Landroid/text/Annotation;
    invoke-virtual {v2}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v10, "textAppearance"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 67
    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "textAppearance":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 69
    const-string/jumbo v11, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 68
    invoke-virtual {v10, v6, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 70
    .local v5, "style":I
    if-nez v5, :cond_0

    .line 71
    const-string/jumbo v10, "RichTextView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot find resource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v7, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 75
    .local v7, "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-static {v3, v2, v7}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .end local v5    # "style":I
    .end local v6    # "textAppearance":Ljava/lang/String;
    .end local v7    # "textAppearanceSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v10, "link"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    new-instance v1, Lcom/android/setupwizardlib/span/LinkSpan;

    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/setupwizardlib/span/LinkSpan;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "link":Lcom/android/setupwizardlib/span/LinkSpan;
    invoke-static {v3, v2, v1}, Lcom/android/setupwizardlib/span/SpanHelper;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "link":Lcom/android/setupwizardlib/span/LinkSpan;
    .end local v2    # "span":Landroid/text/Annotation;
    :cond_3
    return-object v3

    .line 83
    .end local v3    # "spannable":Landroid/text/SpannableString;
    .end local v4    # "spans":[Landroid/text/Annotation;
    :cond_4
    return-object p1
.end method

.method private hasLinks(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 131
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 133
    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 134
    .local v0, "spans":[Landroid/text/style/ClickableSpan;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 136
    .end local v0    # "spans":[Landroid/text/style/ClickableSpan;
    :cond_1
    return v2
.end method

.method private init()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    .line 102
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/RichTextView;->mAccessibilityHelper:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/setupwizardlib/view/RichTextView;->getRichText(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/RichTextView;->hasLinks(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 113
    .local v0, "hasLinks":Z
    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 127
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/RichTextView;->setFocusable(Z)V

    .line 106
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/RichTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method
