.class public interface abstract Lcom/oneplus/camera/ui/PreviewCoverProducer;
.super Ljava/lang/Object;
.source "PreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/PreviewCoverProducer$State;
    }
.end annotation


# static fields
.field public static final FLAG_HIDE_PREVIEW_COVER_DIRECTLY:I = 0x1

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-class v3, Lcom/oneplus/camera/ui/PreviewCoverProducer;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract hidePreviewCover(I)V
.end method

.method public abstract isAlphaBlending()Z
.end method

.method public abstract showPreviewCover(I)Z
.end method
