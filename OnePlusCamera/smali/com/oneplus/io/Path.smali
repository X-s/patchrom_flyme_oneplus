.class public final Lcom/oneplus/io/Path;
.super Ljava/lang/Object;
.source "Path.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCameraFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Camera"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No file or directory path."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_1
    return-object v1

    .line 26
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "/"

    goto :goto_1
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No file path."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_1
    return-object v1

    .line 44
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 49
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No file or directory path."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 65
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 67
    .end local p0    # "path":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 62
    .restart local p0    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 78
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No file or directory path."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "lastIndexOfSlash":I
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "lastIndexOfDot":I
    if-gez v1, :cond_2

    .line 82
    const/4 v1, 0x0

    .line 83
    :cond_2
    if-ltz v0, :cond_3

    if-gt v0, v1, :cond_4

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 85
    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
