.class public interface abstract Lcom/oppo/tribune/LoginUtils$SignInMethod;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/LoginUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignInMethod"
.end annotation


# static fields
.field public static final INVALID_USER_ID:J = -0x1L


# virtual methods
.method public abstract getSignInUserId()J
.end method

.method public abstract signIn(Landroid/content/Context;)Z
.end method
