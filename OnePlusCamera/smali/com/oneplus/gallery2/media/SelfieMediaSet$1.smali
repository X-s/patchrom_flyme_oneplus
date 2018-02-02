.class Lcom/oneplus/gallery2/media/SelfieMediaSet$1;
.super Lcom/oneplus/gallery2/media/Media$DeletionCallback;
.source "SelfieMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/SelfieMediaSet;->startDeletion(Lcom/oneplus/base/Handle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/SelfieMediaSet;

.field private final synthetic val$completedMediaCountRef:Lcom/oneplus/base/Ref;

.field private final synthetic val$deletionHandle:Lcom/oneplus/base/Handle;

.field private final synthetic val$numOfMediaToDelete:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/SelfieMediaSet;Lcom/oneplus/base/Ref;ILcom/oneplus/base/Handle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SelfieMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    iput p3, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$numOfMediaToDelete:I

    iput-object p4, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$deletionHandle:Lcom/oneplus/base/Handle;

    .line 88
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/Media$DeletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery2/media/Media;ZI)V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$completedMediaCountRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$numOfMediaToDelete:I

    if-ge v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SelfieMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/SelfieMediaSet$1;->val$deletionHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p3}, Lcom/oneplus/gallery2/media/SelfieMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    goto :goto_0
.end method
