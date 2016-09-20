.class public interface abstract Lcom/oneplus/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"

# interfaces
.implements Lcom/oneplus/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/cache/MemoryCache$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oneplus/cache/Cache",
        "<TTKey;TTValue;>;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/oneplus/cache/MemoryCache$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/MemoryCache$Callback",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation
.end method

.method public abstract peek(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation
.end method

.method public abstract removeCallback(Lcom/oneplus/cache/MemoryCache$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/MemoryCache$Callback",
            "<TTKey;TTValue;>;)V"
        }
    .end annotation
.end method
