.class public Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnePlusSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OnePlusSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/OnePlusSearchActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->context:Landroid/content/Context;

    .line 191
    iput-object p3, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->list:Ljava/util/ArrayList;

    .line 192
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "holder":Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 213
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 214
    new-instance v0, Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;

    .end local v0    # "holder":Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    .line 215
    .restart local v0    # "holder":Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;
    const v1, 0x7f0b0158

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;->tv:Landroid/widget/TextView;

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 220
    :goto_0
    iget-object v2, v0, Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-object p2

    .line 218
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;
    check-cast v0, Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;
    goto :goto_0
.end method
