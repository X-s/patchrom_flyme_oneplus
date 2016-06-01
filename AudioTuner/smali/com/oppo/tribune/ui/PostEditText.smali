.class public Lcom/oppo/tribune/ui/PostEditText;
.super Landroid/widget/EditText;
.source "PostEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mIsActivityHandleBackKey:Z

.field private mTouchDownCoordinate:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mIsActivityHandleBackKey:Z

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    .line 31
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PostEditText;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mIsActivityHandleBackKey:Z

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    .line 37
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PostEditText;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mIsActivityHandleBackKey:Z

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    .line 43
    invoke-direct {p0}, Lcom/oppo/tribune/ui/PostEditText;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method private setNonlegalSpanStr(Landroid/content/Context;Landroid/text/SpannableString;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spannable"    # Landroid/text/SpannableString;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PostEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "editstr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, "start":I
    const/4 v1, 0x0

    .line 122
    .local v1, "end":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "nonlegalWords":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 125
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const/4 v4, 0x0

    .line 128
    :cond_0
    aget-object v5, v3, v2

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 129
    aget-object v5, v3, v2

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v5, v6

    .line 131
    if-ltz v4, :cond_1

    .line 132
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v6, -0x10000

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x21

    invoke-virtual {p2, v5, v4, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    move v4, v1

    .line 138
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 124
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    .line 190
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 191
    iget-boolean v1, p0, Lcom/oppo/tribune/ui/PostEditText;->mIsActivityHandleBackKey:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PostEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 193
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 195
    const/4 v1, 0x1

    .line 199
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    .line 162
    iget-object v0, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oppo/tribune/ui/PostEditText;->mTouchDownCoordinate:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 169
    invoke-static {p0}, Lcom/oppo/tribune/util/CommonMethods;->showSoftInput(Landroid/view/View;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setActivityhandleBackkey(Z)V
    .locals 0
    .param p1, "letActivityHandleKeycodeBack"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/PostEditText;->mIsActivityHandleBackKey:Z

    .line 207
    return-void
.end method

.method protected setEditSelection(I)V
    .locals 2
    .param p1, "posindex"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PostEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 148
    .local v0, "len":I
    if-lt p1, v0, :cond_0

    .line 149
    move p1, v0

    .line 150
    :cond_0
    if-gez p1, :cond_1

    .line 151
    const/4 p1, 0x0

    .line 152
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/ui/PostEditText;->setSelection(I)V

    .line 153
    return-void
.end method

.method public showNonlegalWord(Landroid/content/Context;Landroid/text/SpannableString;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spannable"    # Landroid/text/SpannableString;
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    const/4 v7, 0x0

    .line 100
    :goto_0
    return-object v7

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 73
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_1

    .line 75
    const-string v7, "\\s*"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PostEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "editstr":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 81
    new-instance p2, Landroid/text/SpannableString;

    .end local p2    # "spannable":Landroid/text/SpannableString;
    invoke-direct {p2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .restart local p2    # "spannable":Landroid/text/SpannableString;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 87
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 88
    .local v4, "m":Ljava/util/regex/Matcher;
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 90
    .local v6, "start":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 92
    .local v2, "end":I
    if-ltz v6, :cond_4

    if-ge v6, v2, :cond_4

    .line 93
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x10000

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {p2, v7, v6, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/ui/PostEditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/ui/PostEditText;->setEditSelection(I)V

    goto :goto_2

    .end local v2    # "end":I
    .end local v6    # "start":I
    :cond_5
    move-object v7, p2

    .line 100
    goto :goto_0
.end method

.method public showNonlegalWord(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 59
    :goto_0
    return-object v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PostEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "editstr":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v1, "spannable":Landroid/text/SpannableString;
    invoke-virtual {p0, p1, v1, p2}, Lcom/oppo/tribune/ui/PostEditText;->showNonlegalWord(Landroid/content/Context;Landroid/text/SpannableString;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    goto :goto_0
.end method

.method public showNonlegalWord(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "posindex"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/PostEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "editstr":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .local v1, "spannable":Landroid/text/SpannableString;
    invoke-direct {p0, p1, v1}, Lcom/oppo/tribune/ui/PostEditText;->setNonlegalSpanStr(Landroid/content/Context;Landroid/text/SpannableString;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/PostEditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/ui/PostEditText;->setEditSelection(I)V

    .line 112
    return-void
.end method
