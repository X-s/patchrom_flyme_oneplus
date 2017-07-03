.class Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;
.super Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;
.source "SpecialDirMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->startDeletion(Lcom/oneplus/base/Handle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

.field final synthetic val$deletionHandle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/SpecialDirMediaSet;Lcom/oneplus/base/Handle;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->val$deletionHandle:Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "result"    # I
    .param p4, "flags"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->this$0:Lcom/oneplus/gallery2/media/SpecialDirMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/SpecialDirMediaSet$1;->val$deletionHandle:Lcom/oneplus/base/Handle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p4}, Lcom/oneplus/gallery2/media/SpecialDirMediaSet;->completeDeletion(Lcom/oneplus/base/Handle;ZI)V

    .line 166
    return-void
.end method
