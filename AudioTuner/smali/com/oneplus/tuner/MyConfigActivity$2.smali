.class Lcom/oneplus/tuner/MyConfigActivity$2;
.super Ljava/lang/Object;
.source "MyConfigActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MyConfigActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MyConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MyConfigActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 8
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const v7, 0x7f0b00a3

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    const v3, 0x7f0b00a8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "tag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 78
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    instance-of v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 79
    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 82
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 83
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 86
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v3}, Lcom/oneplus/tuner/MyConfigActivity;->access$000(Lcom/oneplus/tuner/MyConfigActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v3}, Lcom/oneplus/tuner/MyConfigActivity;->access$000(Lcom/oneplus/tuner/MyConfigActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v3

    iput-boolean v5, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    iput-boolean v4, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # setter for: Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v3, v0}, Lcom/oneplus/tuner/MyConfigActivity;->access$002(Lcom/oneplus/tuner/MyConfigActivity;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 93
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/MyConfigActivity;->mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    if-eqz v3, :cond_3

    .line 94
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/MyConfigActivity;->mAdapter:Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;

    invoke-virtual {v3}, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->notifyDataSetChanged()V

    .line 106
    :cond_3
    :goto_0
    return v5

    .line 97
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    if-eqz v0, :cond_5

    .line 101
    iput-boolean v5, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    .line 103
    :cond_5
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$2;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    const/4 v4, 0x0

    # setter for: Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v3, v4}, Lcom/oneplus/tuner/MyConfigActivity;->access$002(Lcom/oneplus/tuner/MyConfigActivity;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    goto :goto_0
.end method
