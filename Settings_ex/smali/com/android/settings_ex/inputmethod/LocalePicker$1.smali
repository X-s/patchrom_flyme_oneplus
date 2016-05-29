.class final Lcom/android/settings_ex/inputmethod/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II[Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;

    .prologue
    .line 250
    iput-object p5, p0, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->val$layoutId:I

    iput p7, p0, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->val$fieldId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f02003e

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "holder":Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;
    if-nez p2, :cond_0

    .line 257
    new-instance v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;

    .end local v0    # "holder":Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;-><init>(Lcom/android/settings_ex/inputmethod/LocalePicker$1;)V

    .line 258
    .restart local v0    # "holder":Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->val$layoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 259
    iget v2, p0, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->val$fieldId:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mTextView:Landroid/widget/TextView;

    .line 260
    const v2, 0x7f0f0115

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mImageView:Landroid/widget/ImageView;

    .line 262
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/inputmethod/LocalePicker$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;

    .line 267
    .local v1, "item":Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;
    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 269
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item.tostring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item.getLocale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02003f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    :goto_1
    return-object p2

    .line 264
    .end local v1    # "item":Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;
    check-cast v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;

    .restart local v0    # "holder":Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;
    goto :goto_0

    .line 275
    .restart local v1    # "item":Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 279
    :cond_2
    iget-object v2, v0, Lcom/android/settings_ex/inputmethod/LocalePicker$Holder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
