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
    .param p2, "flags"    # I

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    .line 98
    const-string v0, "ActivateMediaSource"

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
    .param p1, "flags"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    # invokes: Lcom/oneplus/gallery2/media/BaseMediaSource;->deactivate(Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->access$000(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/BaseMediaSource$ActivationHandle;)V

    .line 116
    return-void
.end method
