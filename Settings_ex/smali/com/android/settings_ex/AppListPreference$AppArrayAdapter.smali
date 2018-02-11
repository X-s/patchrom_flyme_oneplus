.class public Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings_ex/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/AppListPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "imageDrawables"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "selectedIndex"    # I

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    .line 74
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 75
    iput p6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 76
    iput-object p5, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 87
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04002b

    invoke-virtual {v2, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 88
    .local v5, "view":Landroid/view/View;
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 89
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v6}, Lcom/android/settings_ex/AppListPreference;->-get1(Lcom/android/settings_ex/AppListPreference;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 91
    const v6, 0x7f1100ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    :goto_0
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, p1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v6}, Lcom/android/settings_ex/AppListPreference;->-get0(Lcom/android/settings_ex/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v6}, Lcom/android/settings_ex/AppListPreference;->-get0(Lcom/android/settings_ex/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    if-nez v6, :cond_5

    .line 102
    .local v0, "enabled":Z
    :cond_1
    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    if-nez v0, :cond_2

    .line 104
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    .local v3, "summary":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v6}, Lcom/android/settings_ex/AppListPreference;->-get0(Lcom/android/settings_ex/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    .end local v3    # "summary":Landroid/widget/TextView;
    :cond_2
    return-object v5

    .line 92
    .end local v0    # "enabled":Z
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_3
    iget v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, v6, :cond_4

    .line 93
    const v6, 0x7f1100a9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v6}, Lcom/android/settings_ex/AppListPreference;->-get1(Lcom/android/settings_ex/AppListPreference;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 95
    const v6, 0x7f1100aa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_5
    move v0, v7

    .line 101
    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v1}, Lcom/android/settings_ex/AppListPreference;->-get0(Lcom/android/settings_ex/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings_ex/AppListPreference;

    invoke-static {v1}, Lcom/android/settings_ex/AppListPreference;->-get0(Lcom/android/settings_ex/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
