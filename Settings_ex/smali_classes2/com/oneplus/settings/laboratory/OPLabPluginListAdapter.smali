.class public Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPLabPluginListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflate:Landroid/view/LayoutInflater;

.field private mPluginData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "pluginData":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/laboratory/OPLabPluginModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 17
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;-><init>(Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;)V

    .line 51
    .local v0, "viewHolder":Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v2, 0x7f0400e8

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    const v1, 0x7f11021d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->featureTitle:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    iget-object v2, v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->featureTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 55
    .end local v0    # "viewHolder":Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "pluginData":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/laboratory/OPLabPluginModel;>;"
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method
