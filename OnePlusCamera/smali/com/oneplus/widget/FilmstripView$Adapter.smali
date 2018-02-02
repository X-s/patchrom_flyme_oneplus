.class public abstract Lcom/oneplus/widget/FilmstripView$Adapter;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# static fields
.field private static final MSG_NOTIFY_ITEM_SIZE_CHANGED:I = 0x2710


# instance fields
.field private final m_FilmstripViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/FilmstripView;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/widget/FilmstripView$Adapter;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/oneplus/widget/FilmstripView$Adapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter$1;-><init>(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 176
    :cond_0
    return-void

    .line 181
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/oneplus/widget/FilmstripView;->-wrap8(Lcom/oneplus/widget/FilmstripView;I)V

    .line 181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final attach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method final detach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemWidth(II)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 172
    return p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    invoke-static {v1}, Lcom/oneplus/widget/FilmstripView;->-wrap1(Lcom/oneplus/widget/FilmstripView;)V

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public notifyItemAdded(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    .line 200
    return-void
.end method

.method public notifyItemAdded(II)V
    .locals 2
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    invoke-static {v1, p1, p2}, Lcom/oneplus/widget/FilmstripView;->-wrap5(Lcom/oneplus/widget/FilmstripView;II)V

    .line 212
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 222
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemRemoved(II)V

    .line 220
    return-void
.end method

.method public notifyItemRemoved(II)V
    .locals 2
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    invoke-static {v1, p1, p2}, Lcom/oneplus/widget/FilmstripView;->-wrap6(Lcom/oneplus/widget/FilmstripView;II)V

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method

.method public notifyItemSizeChanged()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged(I)V

    .line 239
    return-void
.end method

.method public notifyItemSizeChanged(I)V
    .locals 3
    .param p1, "fixedPosition"    # I

    .prologue
    const/16 v2, 0x2710

    .line 250
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void
.end method

.method public abstract prepareItemView(ILandroid/view/ViewGroup;)V
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 268
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    return-void
.end method
