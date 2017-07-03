.class public interface abstract Lcom/oneplus/io/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/io/Storage$Type;
    }
.end annotation


# virtual methods
.method public abstract getDirectoryPath()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/oneplus/io/Storage$Type;
.end method

.method public abstract isReady()Z
.end method
