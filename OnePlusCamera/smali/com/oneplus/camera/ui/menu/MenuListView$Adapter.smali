.class final Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;
.super Landroid/widget/BaseAdapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/MenuListView;


# direct methods
.method private constructor <init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/menu/MenuListView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/menu/MenuListView;Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/menu/MenuListView;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;-><init>(Lcom/oneplus/camera/ui/menu/MenuListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/MenuListView;->-get1(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/MenuListView;->-get1(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/MenuListView;->-get1(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/menu/MenuItem;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/MenuListView;->-get1(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/camera/ui/menu/MenuListView;->-wrap0(Lcom/oneplus/camera/ui/menu/MenuListView;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/MenuListView$Adapter;->this$0:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-static {v0}, Lcom/oneplus/camera/ui/menu/MenuListView;->-get1(Lcom/oneplus/camera/ui/menu/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/camera/ui/menu/DividerMenuItem;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
