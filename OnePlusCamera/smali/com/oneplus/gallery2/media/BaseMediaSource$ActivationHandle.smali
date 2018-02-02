.class public Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;
.super Lcom/oneplus/base/Handle;
.source "BaseMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActivationHandle"
.end annotation


# instance fields
.field private final m_Flags:I

.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSource;I)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    const-string/jumbo v0, "ActivateMediaSource"

    .line 98
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 99
    iput p2, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->m_Flags:I

    .line 100
    return-void
.end method


# virtual methods
.method public final getFlags()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->m_Flags:I

    return v0
.end method

.method protected onClose(I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->access$0(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    .line 116
    return-void
.end method
