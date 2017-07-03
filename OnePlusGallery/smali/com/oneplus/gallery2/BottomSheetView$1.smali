.class Lcom/oneplus/gallery2/BottomSheetView$1;
.super Landroid/widget/BaseAdapter;
.source "BottomSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BottomSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BottomSheetView;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BottomSheetView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/BottomSheetView;->access$200(Lcom/oneplus/gallery2/BottomSheetView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/BottomSheetView;->access$200(Lcom/oneplus/gallery2/BottomSheetView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/BottomSheetView;->access$200(Lcom/oneplus/gallery2/BottomSheetView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;

    iget-wide v0, v0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_Context:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/gallery2/BottomSheetView;->access$000(Lcom/oneplus/gallery2/BottomSheetView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030006

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    iget-object v4, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_Context:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/gallery2/BottomSheetView;->access$000(Lcom/oneplus/gallery2/BottomSheetView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 72
    .local v2, "itemHeight":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;

    invoke-direct {v0, v6}, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;-><init>(Lcom/oneplus/gallery2/BottomSheetView$1;)V

    .line 75
    .local v0, "holder":Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;
    const v4, 0x7f06002a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 76
    const v4, 0x7f06002b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->title:Landroid/widget/TextView;

    .line 77
    const v4, 0x7f06002c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->comment:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    .end local v0    # "holder":Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;
    .end local v2    # "itemHeight":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;

    .line 81
    .restart local v0    # "holder":Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;
    iget-object v4, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_BottomSheetItemInfos:Ljava/util/List;
    invoke-static {v4}, Lcom/oneplus/gallery2/BottomSheetView;->access$200(Lcom/oneplus/gallery2/BottomSheetView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;

    .line 82
    .local v1, "item":Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;
    iget-object v4, v1, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 84
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_0
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_ItemTitleTextColor:I
    invoke-static {v5}, Lcom/oneplus/gallery2/BottomSheetView;->access$300(Lcom/oneplus/gallery2/BottomSheetView;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->comment:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->comment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->comment:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/oneplus/gallery2/BottomSheetView$1;->this$0:Lcom/oneplus/gallery2/BottomSheetView;

    # getter for: Lcom/oneplus/gallery2/BottomSheetView;->m_ItemCountTextColor:I
    invoke-static {v5}, Lcom/oneplus/gallery2/BottomSheetView;->access$400(Lcom/oneplus/gallery2/BottomSheetView;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    return-object p2

    .line 88
    :cond_1
    iget-object v4, v0, Lcom/oneplus/gallery2/BottomSheetView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
