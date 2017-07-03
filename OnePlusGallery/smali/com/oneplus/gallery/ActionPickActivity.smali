.class public Lcom/oneplus/gallery/ActionPickActivity;
.super Lcom/oneplus/gallery/GalleryActivity;
.source "ActionPickActivity.java"


# static fields
.field private static final IMAGE_CONTENT_URI:Landroid/net/Uri;

.field private static final REQUEST_CODE:I = 0x2711

.field private static final SYSTEM_PICKER_ACTIVITY_NAME:Ljava/lang/String; = "DocumentsActivity"

.field private static final SYSTEM_PICKER_PACKAGE_NAME:Ljava/lang/String; = "com.android.documentsui"

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private m_IsImageContentUriNeeded:Z

.field private m_IsVideoContentUriNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oneplus/gallery/ActionPickActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery/ActionPickActivity;->IMAGE_CONTENT_URI:Landroid/net/Uri;

    .line 29
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/gallery/ActionPickActivity;->VIDEO_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;-><init>()V

    return-void
.end method

.method private callSystemPicker()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    .local v5, "isSystemActivityNotFound":Z
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .local v3, "fowardIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 49
    .local v0, "contentUri":Landroid/net/Uri;
    sget-object v9, Lcom/oneplus/gallery/ActionPickActivity;->IMAGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 50
    iput-boolean v10, p0, Lcom/oneplus/gallery/ActionPickActivity;->m_IsImageContentUriNeeded:Z

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 56
    .local v2, "flags":I
    const v9, -0x2000001

    and-int/2addr v2, v9

    .line 57
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    :try_start_0
    const-string v9, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.documentsui"

    const-string v11, "com.android.documentsui.DocumentsActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    const-string v9, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-boolean v9, p0, Lcom/oneplus/gallery/ActionPickActivity;->m_IsImageContentUriNeeded:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/oneplus/gallery/ActionPickActivity;->m_IsVideoContentUriNeeded:Z

    if-eqz v9, :cond_2

    .line 65
    :cond_1
    const-string v9, "android.intent.extra.LOCAL_ONLY"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    :cond_2
    const/16 v9, 0x2711

    invoke-virtual {p0, v3, v9}, Lcom/oneplus/gallery/ActionPickActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    if-eqz v5, :cond_3

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 80
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    const/4 v9, 0x1

    invoke-virtual {v7, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 84
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 86
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 87
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    const/16 v9, 0x2711

    invoke-virtual {p0, v3, v9}, Lcom/oneplus/gallery/ActionPickActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_2
    return-void

    .line 51
    .end local v2    # "flags":I
    :cond_4
    sget-object v9, Lcom/oneplus/gallery/ActionPickActivity;->VIDEO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 52
    iput-boolean v10, p0, Lcom/oneplus/gallery/ActionPickActivity;->m_IsVideoContentUriNeeded:Z

    goto :goto_0

    .line 68
    .restart local v2    # "flags":I
    :catch_0
    move-exception v1

    .line 70
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    const-string v10, "callSystemPicker() - system activity not found!"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v5, 0x1

    goto :goto_1

    .line 92
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_5
    :try_start_2
    sget-object v9, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    const-string v10, "callSystemPicker() - No activity to handle intent"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 96
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v8

    .line 98
    .local v8, "tr":Ljava/lang/Throwable;
    sget-object v9, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    const-string v10, "callSystemPicker() - Failed to start activity"

    invoke-static {v9, v10, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->finish()V

    goto :goto_2
.end method


# virtual methods
.method protected getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "mimeType":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 111
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    sget-object v2, Lcom/oneplus/gallery/ActivityLaunchType;->PHOTO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

    .line 116
    :goto_1
    return-object v2

    .line 108
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_1
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    sget-object v2, Lcom/oneplus/gallery/ActivityLaunchType;->VIDEO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

    goto :goto_1

    .line 116
    :cond_2
    sget-object v2, Lcom/oneplus/gallery/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery/ActivityLaunchType;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 121
    const/16 v7, 0x2711

    if-ne p1, v7, :cond_5

    .line 124
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "docId":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 129
    .local v5, "separatorIndex":I
    const/4 v3, 0x0

    .line 130
    .local v3, "id":Ljava/lang/String;
    const/4 v6, 0x0

    .line 131
    .local v6, "type":Ljava/lang/String;
    if-lez v5, :cond_0

    .line 133
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 136
    :cond_0
    if-eqz v3, :cond_8

    const-string v7, "[\\d]+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 138
    iget-boolean v7, p0, Lcom/oneplus/gallery/ActionPickActivity;->m_IsImageContentUriNeeded:Z

    if-eqz v7, :cond_7

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/oneplus/gallery/ActionPickActivity;->IMAGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    .end local v1    # "docId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "separatorIndex":I
    .end local v6    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "mimeType":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 163
    :cond_3
    if-eqz p3, :cond_4

    .line 164
    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/gallery/ActionPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/oneplus/gallery/ActionPickActivity;->finish()V

    .line 168
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_5
    return-void

    :cond_6
    move-object v0, v4

    .line 124
    goto :goto_0

    .line 140
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v1    # "docId":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v5    # "separatorIndex":I
    .restart local v6    # "type":Ljava/lang/String;
    :cond_7
    iget-boolean v7, p0, Lcom/oneplus/gallery/ActionPickActivity;->m_IsVideoContentUriNeeded:Z

    if-eqz v7, :cond_1

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/oneplus/gallery/ActionPickActivity;->VIDEO_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 143
    :cond_8
    const-string v7, "com.android.externalstorage.documents"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 145
    sget-object v7, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult() - is external storage document uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v7, "primary"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "filePath":Ljava/lang/String;
    sget-object v7, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult() - filePath is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    goto/16 :goto_1

    .line 154
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_9
    sget-object v7, Lcom/oneplus/gallery/ActionPickActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult() - Unsupported document ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",contentUri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "tempState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 38
    invoke-direct {p0}, Lcom/oneplus/gallery/ActionPickActivity;->callSystemPicker()V

    .line 39
    return-void
.end method
