.class public Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGestureAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x1

.field private static final VIEW_TYPE_TITLE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureUid:I

.field private mHasShortCut:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mSelectedPosition:I

.field private mShortcutName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "gestureSummary"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x6

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 86
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    if-nez p2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    const v3, 0x7f0400ec

    .line 87
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppAdapter;)V

    .line 91
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    const v2, 0x7f11021c

    .line 90
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 93
    const v2, 0x7f11021b

    .line 92
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 95
    const/high16 v2, 0x7f110000

    .line 94
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 97
    const v2, 0x7f110145

    .line 96
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f1100e5

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f11021e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 102
    const v2, 0x7f11021a

    .line 101
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 104
    const v2, 0x7f11021f

    .line 103
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    if-ne p1, v7, :cond_4

    .line 111
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0e0383

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 117
    :goto_1
    if-ge p1, v6, :cond_6

    .line 118
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    :goto_2
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    if-eqz p1, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    .line 125
    :cond_0
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_3
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    if-ge p1, v6, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    :cond_1
    if-lt p1, v6, :cond_9

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureUid:I

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 132
    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    iget-boolean v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    if-eqz v2, :cond_8

    .line 134
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_4
    return-object p2

    .line 107
    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    .local v0, "mItemViewHolder":Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    goto :goto_0

    .line 112
    :cond_4
    if-ne p1, v6, :cond_5

    .line 113
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0e0384

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 115
    :cond_5
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :cond_6
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 127
    :cond_7
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 137
    :cond_8
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 141
    :cond_9
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    iget-object v2, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/better/OPAppModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "pacakgeName"    # Ljava/lang/String;
    .param p3, "pacakgeUid"    # I
    .param p4, "hasShortcut"    # Z
    .param p5, "shortCutName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureUid:I

    .line 58
    iput-boolean p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    .line 59
    iput-object p5, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mSelectedPosition:I

    .line 51
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
