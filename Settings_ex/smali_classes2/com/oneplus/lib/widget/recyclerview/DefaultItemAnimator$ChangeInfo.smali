.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field public oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 77
    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 75
    return-void
.end method

.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 83
    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromX:I

    .line 84
    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromY:I

    .line 85
    iput p5, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toX:I

    .line 86
    iput p6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toY:I

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    const-string/jumbo v1, ", newHolder="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, ", fromX="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromX:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string/jumbo v1, ", fromY="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromY:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", toX="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toX:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string/jumbo v1, ", toY="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toY:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    const/16 v1, 0x7d

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
