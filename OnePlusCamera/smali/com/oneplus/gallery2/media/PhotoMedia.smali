.class public interface abstract Lcom/oneplus/gallery2/media/PhotoMedia;
.super Ljava/lang/Object;
.source "PhotoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;
    }
.end annotation


# static fields
.field public static final FLAG_RAW_MEDIA_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oneplus/gallery2/media/PhotoMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/PhotoMedia;->FLAG_RAW_MEDIA_CHANGED:I

    return-void
.end method


# virtual methods
.method public abstract checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract getEncodedMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
.end method

.method public abstract getRawMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
.end method

.method public abstract isBokeh()Z
.end method

.method public abstract isBurstGroup()Z
.end method

.method public abstract isPanorama()Z
.end method

.method public abstract isRaw()Z
.end method

.method public abstract peekIsAnimatable()Ljava/lang/Boolean;
.end method
