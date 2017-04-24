.class public Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
.super Ljava/lang/Object;
.source "CompatibilityWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/CompatibilityWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompatibilityPkgInfo"
.end annotation


# instance fields
.field parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->pkgName:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->parameters:Ljava/util/ArrayList;

    .line 48
    return-void
.end method
