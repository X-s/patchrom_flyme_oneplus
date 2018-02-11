.class public Lcom/android/setupwizardlib/items/ButtonItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mEnabled:Z

.field private mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

.field private mText:Ljava/lang/CharSequence;

.field private mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 41
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    iput v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 41
    sget v1, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    iput v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 52
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_enabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 54
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    .line 55
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwButtonItem_android_theme:I

    sget v2, Lcom/android/setupwizardlib/R$style;->SuwButtonItem:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method


# virtual methods
.method protected createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    if-nez v2, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    if-eqz v2, :cond_0

    .line 128
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 130
    .end local v1    # "context":Landroid/content/Context;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    .line 131
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    return-object v2

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    return v0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot bind to ButtonItem\'s view"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;->onClick(Lcom/android/setupwizardlib/items/ButtonItem;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mEnabled:Z

    .line 90
    return-void
.end method

.method public setOnClickListener(Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mListener:Lcom/android/setupwizardlib/items/ButtonItem$OnClickListener;

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mText:Ljava/lang/CharSequence;

    .line 63
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mTheme:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->mButton:Landroid/widget/Button;

    .line 78
    return-void
.end method
