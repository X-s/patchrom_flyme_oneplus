.class Lcom/oneplus/camera/io/FileManagerImpl$1;
.super Ljava/lang/Object;
.source "FileManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/io/FileManagerImpl;->getFiles()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/io/FileManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/io/FileManagerImpl;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$1;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 304
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 305
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 308
    :cond_0
    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p1}, Ljava/io/File;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/io/File;->hashCode()I

    move-result v2

    sub-int v0, v1, v2

    .line 312
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "f1"    # Ljava/lang/Object;
    .param p2, "f2"    # Ljava/lang/Object;

    .prologue
    .line 303
    check-cast p1, Ljava/io/File;

    .end local p1    # "f1":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "f2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/io/FileManagerImpl$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
