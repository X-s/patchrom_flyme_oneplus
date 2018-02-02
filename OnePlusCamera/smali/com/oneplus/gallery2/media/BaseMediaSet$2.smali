.class Lcom/oneplus/gallery2/media/BaseMediaSet$2;
.super Lcom/oneplus/base/CallbackHandle;
.source "BaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/BaseMediaSet;->delete(Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$2;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    .line 443
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method
