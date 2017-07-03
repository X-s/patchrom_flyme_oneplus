.class Lcom/oneplus/gallery/SingleMediaActivity$2;
.super Ljava/lang/Object;
.source "SingleMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/SingleMediaActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/SingleMediaActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/SingleMediaActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oneplus/gallery/SingleMediaActivity$2;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$2;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    iget-object v1, p0, Lcom/oneplus/gallery/SingleMediaActivity$2;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    # getter for: Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;
    invoke-static {v1}, Lcom/oneplus/gallery/SingleMediaActivity;->access$000(Lcom/oneplus/gallery/SingleMediaActivity;)Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    .line 124
    return-void
.end method
