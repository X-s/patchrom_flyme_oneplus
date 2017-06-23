.class public final Lcom/hydrogen/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hydrogen/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final BIND_OEMEX_SERVICE:Ljava/lang/String; = "android.permission.BIND_OEMEX_SERVICE"

.field public static final SET_KEYGUARD_WALLPAPER:Ljava/lang/String; = "android.permission.SET_KEYGUARD_WALLPAPER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
