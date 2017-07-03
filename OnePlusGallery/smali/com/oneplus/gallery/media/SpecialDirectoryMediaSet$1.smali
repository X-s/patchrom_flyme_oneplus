.class Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet$1;
.super Ljava/lang/Object;
.source "SpecialDirectoryMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/OPMediaManager$MediaRenameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaSet$Type;Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;Lcom/oneplus/gallery/media/MediaType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenamed(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "oldPath"    # Ljava/lang/String;
    .param p4, "newPath"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;

    # invokes: Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->onDirectoryRenamed(JLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;->access$000(Lcom/oneplus/gallery/media/SpecialDirectoryMediaSet;JLjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
