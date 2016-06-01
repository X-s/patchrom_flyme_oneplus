.class public Lcom/oppo/tribune/util/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/tribune/util/Attachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAttachSize:Ljava/lang/String;

.field private mAttachment:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mExt:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mFileType:Ljava/lang/String;

.field private mIsImage:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/oppo/tribune/util/Attachment$1;

    invoke-direct {v0}, Lcom/oppo/tribune/util/Attachment$1;-><init>()V

    sput-object v0, Lcom/oppo/tribune/util/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAid:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileType:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileSize:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAttachment:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mIsImage:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mDescription:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mExt:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAttachSize:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mUrl:Ljava/lang/String;

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/tribune/util/Attachment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oppo/tribune/util/Attachment$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/Attachment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAttachSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mIsImage:Ljava/lang/String;

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mAid:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAttachSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachsize"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mAttachSize:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachment"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mAttachment:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mDescription:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mExt:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mFileName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "filesize"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mFileSize:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .param p1, "filetype"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mFileType:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIsImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "isimage"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mIsImage:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oppo/tribune/util/Attachment;->mUrl:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "paramParcel"    # Landroid/os/Parcel;
    .param p2, "paramInt"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mFileSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAttachment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mIsImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mAttachSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/oppo/tribune/util/Attachment;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    return-void
.end method
