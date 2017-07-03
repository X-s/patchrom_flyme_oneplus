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
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/oneplus/widget/FilmstripView$Adapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter$1;-><init>(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/widget/FilmstripView$Adapter;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 184
    :cond_0
    return-void

    .line 180
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged(I)V
    invoke-static {v1, v2}, Lcom/oneplus/widget/FilmstripView;->access$3(Lcom/oneplus/widget/FilmstripView;I)V

    .line 180
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 177
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
    .line 148
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method final detach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemWidth(II)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 171
    return p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 193
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V
    invoke-static {v1}, Lcom/oneplus/widget/FilmstripView;->access$4(Lcom/oneplus/widget/FilmstripView;)V

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public notifyItemAdded(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    .line 202
    return-void
.end method

.method public notifyItemAdded(II)V
    .locals 2
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 213
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onItemAdded(II)V
    invoke-static {v1, p1, p2}, Lcom/oneplus/widget/FilmstripView;->access$5(Lcom/oneplus/widget/FilmstripView;II)V

    .line 211
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public notifyItemRemoved(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemRemoved(II)V

    .line 222
    return-void
.end method

.method public notifyItemRemoved(II)V
    .locals 2
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 233
    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onItemRemoved(II)V
    invoke-static {v1, p1, p2}, Lcom/oneplus/widget/FilmstripView;->access$6(Lcom/oneplus/widget/FilmstripView;II)V

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public notifyItemSizeChanged()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged(I)V

    .line 241
    return-void
.end method

.method public notifyItemSizeChanged(I)V
    .locals 3
    .param p1, "fixedPosition"    # I

    .prologue
    const/16 v2, 0x2710

    .line 249
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 251
    return-void
.end method

.method public abstract prepareItemView(ILandroid/view/ViewGroup;)V
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 268
    return-void
.end method
