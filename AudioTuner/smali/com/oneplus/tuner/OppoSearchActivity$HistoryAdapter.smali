.class Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OppoSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OppoSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/tuner/OppoSearchActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/OppoSearchActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
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
    .line 221
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    .line 222
    const v0, 0x7f03002d

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 223
    iput-object p3, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->items:Ljava/util/ArrayList;

    .line 224
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 225
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->getCount()I

    move-result v0

    .line 234
    .local v0, "size":I
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->items:Ljava/util/ArrayList;

    sub-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 238
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 243
    if-nez p2, :cond_0

    .line 244
    iget-object v3, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 248
    :cond_0
    const v3, 0x7f0b00fd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    .local v1, "tv":Landroid/widget/TextView;
    const v3, 0x7f0b00fe

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 252
    .local v0, "del":Landroid/widget/ImageButton;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "txt":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    new-instance v3, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;-><init>(Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-object p2
.end method
