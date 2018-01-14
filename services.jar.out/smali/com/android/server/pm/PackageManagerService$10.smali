.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/util/ArrayList;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->scanPackageDirtyLI(Landroid/content/pm/PackageParser$Package;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 8911
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8912
    const-string/jumbo v0, "net.oneplus.deskclock"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$10;->add(Ljava/lang/Object;)Z

    .line 8913
    const-string/jumbo v0, "com.google.android.deskclock"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$10;->add(Ljava/lang/Object;)Z

    .line 8911
    return-void
.end method
