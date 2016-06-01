.class public Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "OnePlusPinnedHeaderExpandableAdapter.java"

# interfaces
.implements Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;,
        Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    }
.end annotation


# instance fields
.field private groupStatusMap:Landroid/util/SparseIntArray;

.field private mBrands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentHeadsetId:J

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;Ljava/util/ArrayList;Ljava/util/HashMap;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/OfficialEarphone;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "brands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mListView:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    .line 33
    iput-object p3, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    .line 34
    iput-object p4, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    .line 35
    iput-wide p5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mCurrentHeadsetId:J

    .line 36
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method


# virtual methods
.method public configureHeader(Landroid/view/View;III)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I
    .param p4, "alpha"    # I

    .prologue
    const v2, 0x7f0b0158

    .line 150
    invoke-virtual {p0, p2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "brand":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    const v1, 0x7f0b0061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/OfficialEarphone;

    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getLogo()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public getChild(II)Lcom/oneplus/tuner/providers/OfficialEarphone;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/OfficialEarphone;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getChild(II)Lcom/oneplus/tuner/providers/OfficialEarphone;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 46
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getChild(II)Lcom/oneplus/tuner/providers/OfficialEarphone;

    move-result-object v0

    .line 54
    .local v0, "data":Lcom/oneplus/tuner/providers/OfficialEarphone;
    if-nez p4, :cond_0

    .line 55
    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 56
    new-instance v1, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;

    .end local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    invoke-direct {v1, p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;-><init>(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;)V

    .line 57
    .restart local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    const v2, 0x7f0b0158

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->typeName:Landroid/widget/TextView;
    invoke-static {v1, v2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->access$002(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0b016b

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->rb:Landroid/widget/ImageView;
    invoke-static {v1, v2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->access$102(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    # getter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->typeName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->access$000(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-wide v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mCurrentHeadsetId:J

    invoke-virtual {v0}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getTypeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 68
    # getter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->rb:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->access$100(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_1
    return-object p4

    .line 63
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    check-cast v1, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;

    .restart local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    goto :goto_0

    .line 70
    :cond_1
    # getter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->rb:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->access$100(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 78
    if-gez p1, :cond_0

    .line 79
    const/4 p1, 0x0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGroupClickStatus(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "brand":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 111
    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 112
    new-instance v1, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;

    .end local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    invoke-direct {v1, p0}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;-><init>(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;)V

    .line 113
    .restart local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    const v2, 0x7f0b0158

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->brandName:Landroid/widget/TextView;
    invoke-static {v1, v2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->access$202(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 114
    const v2, 0x7f0b0061

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v1, v2}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->access$302(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_0
    # getter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->brandName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->access$200(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    # getter for: Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->access$300(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v2, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mBrands:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/OfficialEarphone;

    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getLogo()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-object p3

    .line 117
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    check-cast v1, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;

    .restart local v1    # "holder":Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    goto :goto_0
.end method

.method public getHeaderState(II)I
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->getChildrenCount(I)I

    move-result v0

    .line 137
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    if-ne p2, v1, :cond_0

    .line 138
    const/4 v1, 0x2

    .line 143
    :goto_0
    return v1

    .line 139
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mListView:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;

    invoke-virtual {v1, p1}, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public setGroupClickStatus(II)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "status"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;->groupStatusMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    return-void
.end method
