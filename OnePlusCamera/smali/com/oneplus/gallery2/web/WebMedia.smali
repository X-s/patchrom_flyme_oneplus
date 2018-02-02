.class public interface abstract Lcom/oneplus/gallery2/web/WebMedia;
.super Ljava/lang/Object;
.source "WebMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TMediaInfo:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/gallery2/media/Media;"
    }
.end annotation


# virtual methods
.method public abstract getOwner()Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract update(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTMediaInfo;)I"
        }
    .end annotation
.end method
