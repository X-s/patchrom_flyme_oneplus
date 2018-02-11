.class Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mLocaleDragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;

.field final synthetic this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings_ex/localepicker/LocaleDragCell;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;
    .param p2, "view"    # Lcom/android/settings_ex/localepicker/LocaleDragCell;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    .line 73
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    iput-object p2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;

    invoke-virtual {v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->getDragHandle()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getLocaleDragCell()Lcom/android/settings_ex/localepicker/LocaleDragCell;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->mLocaleDragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get1(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
