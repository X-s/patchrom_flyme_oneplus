.class public Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPLocalRingtoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;,
        Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_1

    .line 48
    new-instance v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;

    invoke-direct {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;-><init>()V

    .line 49
    .local v1, "holdview":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->mTitle:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f120126

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/widget/button/OPRadioButton;

    iput-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->button:Lcom/oneplus/widget/button/OPRadioButton;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 61
    .local v0, "data":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    if-eqz v0, :cond_0

    .line 62
    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->mTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;->button:Lcom/oneplus/widget/button/OPRadioButton;

    iget-boolean v3, v0, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->isCheck:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/button/OPRadioButton;->setChecked(Z)V

    .line 66
    .end local v0    # "data":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;
    :cond_0
    return-object p2

    .line 57
    .end local v1    # "holdview":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;

    .restart local v1    # "holdview":Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$HoldView;
    goto :goto_0
.end method
