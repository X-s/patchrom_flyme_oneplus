.class public interface abstract Lcom/oneplus/gallery2/media/MediaFilter;
.super Ljava/lang/Object;
.source "MediaFilter.java"

# interfaces
.implements Lcom/oneplus/base/ThreadDependentObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;,
        Lcom/oneplus/gallery2/media/MediaFilter$MediaType;,
        Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;
    }
.end annotation


# virtual methods
.method public abstract filter(Lcom/oneplus/gallery2/media/Media;I)Z
.end method

.method public abstract getParams()Lcom/oneplus/gallery2/media/MediaFilter$FilterParams;
.end method

.method public abstract release()V
.end method
