.class final Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;
.super Lcom/oneplus/gallery2/media/BaseMediaSetList;
.source "MtpMediaSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MtpMediaSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSetListImpl"
.end annotation


# instance fields
.field public final targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Lcom/oneplus/gallery2/media/MediaSetComparator;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;Z)V

    .line 57
    iput-object p3, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->targetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 58
    sget-object v0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->release()V

    .line 66
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;->this$0:Lcom/oneplus/gallery2/media/MtpMediaSetManager;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/MtpMediaSetManager;->access$4(Lcom/oneplus/gallery2/media/MtpMediaSetManager;Lcom/oneplus/gallery2/media/MtpMediaSetManager$MediaSetListImpl;)V

    .line 67
    return-void
.end method
