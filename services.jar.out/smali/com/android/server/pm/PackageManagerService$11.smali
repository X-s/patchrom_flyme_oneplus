.class Lcom/android/server/pm/PackageManagerService$11;
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
    .line 8916
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8917
    const-string/jumbo v0, "com.oneplus.launcher"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$11;->add(Ljava/lang/Object;)Z

    .line 8918
    const-string/jumbo v0, "com.android.launcher3"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$11;->add(Ljava/lang/Object;)Z

    .line 8919
    const-string/jumbo v0, "com.oneplus.hydrogen.launcher"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$11;->add(Ljava/lang/Object;)Z

    .line 8916
    return-void
.end method
