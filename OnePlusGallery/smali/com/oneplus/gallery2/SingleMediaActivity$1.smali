.class Lcom/oneplus/gallery2/SingleMediaActivity$1;
.super Ljava/lang/Object;
.source "SingleMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/SingleMediaActivity;->callOnMediaObtained()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/SingleMediaActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/SingleMediaActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/gallery2/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery2/SingleMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery2/SingleMediaActivity;

    iget-object v1, p0, Lcom/oneplus/gallery2/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery2/SingleMediaActivity;

    # getter for: Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;
    invoke-static {v1}, Lcom/oneplus/gallery2/SingleMediaActivity;->access$000(Lcom/oneplus/gallery2/SingleMediaActivity;)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    .line 58
    return-void
.end method
