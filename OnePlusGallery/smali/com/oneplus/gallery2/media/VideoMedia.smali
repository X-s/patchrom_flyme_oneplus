.class public interface abstract Lcom/oneplus/gallery2/media/VideoMedia;
.super Ljava/lang/Object;
.source "VideoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;
    }
.end annotation


# static fields
.field public static final FLAG_DURATION_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oneplus/gallery2/media/VideoMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/VideoMedia;->FLAG_DURATION_CHANGED:I

    return-void
.end method


# virtual methods
.method public abstract getDuration(Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract isSlowMotion()Z
.end method

.method public abstract isTimeLapse()Z
.end method

.method public abstract peekDuration()Ljava/lang/Long;
.end method
