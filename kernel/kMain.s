
kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <inLong>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 14             	sub    $0x14,%esp
  100006:	e8 3a 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10000b:	05 f5 5f 00 00       	add    $0x5ff5,%eax
  100010:	8b 45 08             	mov    0x8(%ebp),%eax
  100013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  100017:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10001a:	89 c2                	mov    %eax,%edx
  10001c:	ed                   	in     (%dx),%eax
  10001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100020:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100023:	c9                   	leave  
  100024:	c3                   	ret    

00100025 <outLong>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 04             	sub    $0x4,%esp
  10002b:	e8 15 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100030:	05 d0 5f 00 00       	add    $0x5fd0,%eax
  100035:	8b 45 08             	mov    0x8(%ebp),%eax
  100038:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10003c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10003f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100042:	ef                   	out    %eax,(%dx)
  100043:	90                   	nop
  100044:	c9                   	leave  
  100045:	c3                   	ret    

00100046 <inByte>:
  100046:	55                   	push   %ebp
  100047:	89 e5                	mov    %esp,%ebp
  100049:	83 ec 14             	sub    $0x14,%esp
  10004c:	e8 f4 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100051:	05 af 5f 00 00       	add    $0x5faf,%eax
  100056:	8b 45 08             	mov    0x8(%ebp),%eax
  100059:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10005d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100060:	89 c2                	mov    %eax,%edx
  100062:	ec                   	in     (%dx),%al
  100063:	88 45 ff             	mov    %al,-0x1(%ebp)
  100066:	8a 45 ff             	mov    -0x1(%ebp),%al
  100069:	c9                   	leave  
  10006a:	c3                   	ret    

0010006b <outByte>:
  10006b:	55                   	push   %ebp
  10006c:	89 e5                	mov    %esp,%ebp
  10006e:	83 ec 08             	sub    $0x8,%esp
  100071:	e8 cf 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100076:	05 8a 5f 00 00       	add    $0x5f8a,%eax
  10007b:	8b 45 08             	mov    0x8(%ebp),%eax
  10007e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100081:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100085:	88 d0                	mov    %dl,%al
  100087:	88 45 f8             	mov    %al,-0x8(%ebp)
  10008a:	8a 45 f8             	mov    -0x8(%ebp),%al
  10008d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100090:	ee                   	out    %al,(%dx)
  100091:	90                   	nop
  100092:	c9                   	leave  
  100093:	c3                   	ret    

00100094 <waitDisk>:
  100094:	55                   	push   %ebp
  100095:	89 e5                	mov    %esp,%ebp
  100097:	e8 a9 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10009c:	05 64 5f 00 00       	add    $0x5f64,%eax
  1000a1:	90                   	nop
  1000a2:	68 f7 01 00 00       	push   $0x1f7
  1000a7:	e8 9a ff ff ff       	call   100046 <inByte>
  1000ac:	83 c4 04             	add    $0x4,%esp
  1000af:	0f b6 c0             	movzbl %al,%eax
  1000b2:	25 c0 00 00 00       	and    $0xc0,%eax
  1000b7:	83 f8 40             	cmp    $0x40,%eax
  1000ba:	75 e6                	jne    1000a2 <waitDisk+0xe>
  1000bc:	90                   	nop
  1000bd:	c9                   	leave  
  1000be:	c3                   	ret    

001000bf <readSect>:
  1000bf:	55                   	push   %ebp
  1000c0:	89 e5                	mov    %esp,%ebp
  1000c2:	53                   	push   %ebx
  1000c3:	83 ec 10             	sub    $0x10,%esp
  1000c6:	e8 7a 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  1000cb:	05 35 5f 00 00       	add    $0x5f35,%eax
  1000d0:	e8 bf ff ff ff       	call   100094 <waitDisk>
  1000d5:	6a 01                	push   $0x1
  1000d7:	68 f2 01 00 00       	push   $0x1f2
  1000dc:	e8 8a ff ff ff       	call   10006b <outByte>
  1000e1:	83 c4 08             	add    $0x8,%esp
  1000e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000e7:	0f be c0             	movsbl %al,%eax
  1000ea:	50                   	push   %eax
  1000eb:	68 f3 01 00 00       	push   $0x1f3
  1000f0:	e8 76 ff ff ff       	call   10006b <outByte>
  1000f5:	83 c4 08             	add    $0x8,%esp
  1000f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000fb:	c1 f8 08             	sar    $0x8,%eax
  1000fe:	0f be c0             	movsbl %al,%eax
  100101:	50                   	push   %eax
  100102:	68 f4 01 00 00       	push   $0x1f4
  100107:	e8 5f ff ff ff       	call   10006b <outByte>
  10010c:	83 c4 08             	add    $0x8,%esp
  10010f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100112:	c1 f8 10             	sar    $0x10,%eax
  100115:	0f be c0             	movsbl %al,%eax
  100118:	50                   	push   %eax
  100119:	68 f5 01 00 00       	push   $0x1f5
  10011e:	e8 48 ff ff ff       	call   10006b <outByte>
  100123:	83 c4 08             	add    $0x8,%esp
  100126:	8b 45 0c             	mov    0xc(%ebp),%eax
  100129:	c1 f8 18             	sar    $0x18,%eax
  10012c:	83 c8 e0             	or     $0xffffffe0,%eax
  10012f:	0f be c0             	movsbl %al,%eax
  100132:	50                   	push   %eax
  100133:	68 f6 01 00 00       	push   $0x1f6
  100138:	e8 2e ff ff ff       	call   10006b <outByte>
  10013d:	83 c4 08             	add    $0x8,%esp
  100140:	6a 20                	push   $0x20
  100142:	68 f7 01 00 00       	push   $0x1f7
  100147:	e8 1f ff ff ff       	call   10006b <outByte>
  10014c:	83 c4 08             	add    $0x8,%esp
  10014f:	e8 40 ff ff ff       	call   100094 <waitDisk>
  100154:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10015b:	eb 22                	jmp    10017f <readSect+0xc0>
  10015d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100167:	8b 45 08             	mov    0x8(%ebp),%eax
  10016a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  10016d:	68 f0 01 00 00       	push   $0x1f0
  100172:	e8 89 fe ff ff       	call   100000 <inLong>
  100177:	83 c4 04             	add    $0x4,%esp
  10017a:	89 03                	mov    %eax,(%ebx)
  10017c:	ff 45 f8             	incl   -0x8(%ebp)
  10017f:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  100183:	7e d8                	jle    10015d <readSect+0x9e>
  100185:	90                   	nop
  100186:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100189:	c9                   	leave  
  10018a:	c3                   	ret    

0010018b <writeSect>:
  10018b:	55                   	push   %ebp
  10018c:	89 e5                	mov    %esp,%ebp
  10018e:	83 ec 10             	sub    $0x10,%esp
  100191:	e8 af 02 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100196:	05 6a 5e 00 00       	add    $0x5e6a,%eax
  10019b:	e8 f4 fe ff ff       	call   100094 <waitDisk>
  1001a0:	6a 01                	push   $0x1
  1001a2:	68 f2 01 00 00       	push   $0x1f2
  1001a7:	e8 bf fe ff ff       	call   10006b <outByte>
  1001ac:	83 c4 08             	add    $0x8,%esp
  1001af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001b2:	0f be c0             	movsbl %al,%eax
  1001b5:	50                   	push   %eax
  1001b6:	68 f3 01 00 00       	push   $0x1f3
  1001bb:	e8 ab fe ff ff       	call   10006b <outByte>
  1001c0:	83 c4 08             	add    $0x8,%esp
  1001c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001c6:	c1 f8 08             	sar    $0x8,%eax
  1001c9:	0f be c0             	movsbl %al,%eax
  1001cc:	50                   	push   %eax
  1001cd:	68 f4 01 00 00       	push   $0x1f4
  1001d2:	e8 94 fe ff ff       	call   10006b <outByte>
  1001d7:	83 c4 08             	add    $0x8,%esp
  1001da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001dd:	c1 f8 10             	sar    $0x10,%eax
  1001e0:	0f be c0             	movsbl %al,%eax
  1001e3:	50                   	push   %eax
  1001e4:	68 f5 01 00 00       	push   $0x1f5
  1001e9:	e8 7d fe ff ff       	call   10006b <outByte>
  1001ee:	83 c4 08             	add    $0x8,%esp
  1001f1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001f4:	c1 f8 18             	sar    $0x18,%eax
  1001f7:	83 c8 e0             	or     $0xffffffe0,%eax
  1001fa:	0f be c0             	movsbl %al,%eax
  1001fd:	50                   	push   %eax
  1001fe:	68 f6 01 00 00       	push   $0x1f6
  100203:	e8 63 fe ff ff       	call   10006b <outByte>
  100208:	83 c4 08             	add    $0x8,%esp
  10020b:	6a 30                	push   $0x30
  10020d:	68 f7 01 00 00       	push   $0x1f7
  100212:	e8 54 fe ff ff       	call   10006b <outByte>
  100217:	83 c4 08             	add    $0x8,%esp
  10021a:	e8 75 fe ff ff       	call   100094 <waitDisk>
  10021f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100226:	eb 22                	jmp    10024a <writeSect+0xbf>
  100228:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10022b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100232:	8b 45 08             	mov    0x8(%ebp),%eax
  100235:	01 d0                	add    %edx,%eax
  100237:	8b 00                	mov    (%eax),%eax
  100239:	50                   	push   %eax
  10023a:	68 f0 01 00 00       	push   $0x1f0
  10023f:	e8 e1 fd ff ff       	call   100025 <outLong>
  100244:	83 c4 08             	add    $0x8,%esp
  100247:	ff 45 fc             	incl   -0x4(%ebp)
  10024a:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  10024e:	7e d8                	jle    100228 <writeSect+0x9d>
  100250:	90                   	nop
  100251:	c9                   	leave  
  100252:	c3                   	ret    

00100253 <diskRead>:
  100253:	55                   	push   %ebp
  100254:	89 e5                	mov    %esp,%ebp
  100256:	81 ec 10 02 00 00    	sub    $0x210,%esp
  10025c:	e8 e4 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100261:	05 9f 5d 00 00       	add    $0x5d9f,%eax
  100266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10026d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100274:	8b 45 14             	mov    0x14(%ebp),%eax
  100277:	85 c0                	test   %eax,%eax
  100279:	79 05                	jns    100280 <diskRead+0x2d>
  10027b:	05 ff 01 00 00       	add    $0x1ff,%eax
  100280:	c1 f8 09             	sar    $0x9,%eax
  100283:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100286:	8b 45 14             	mov    0x14(%ebp),%eax
  100289:	25 ff 01 00 80       	and    $0x800001ff,%eax
  10028e:	85 c0                	test   %eax,%eax
  100290:	79 07                	jns    100299 <diskRead+0x46>
  100292:	48                   	dec    %eax
  100293:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100298:	40                   	inc    %eax
  100299:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10029c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10029f:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1002a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002a8:	01 d0                	add    %edx,%eax
  1002aa:	50                   	push   %eax
  1002ab:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1002b1:	50                   	push   %eax
  1002b2:	e8 08 fe ff ff       	call   1000bf <readSect>
  1002b7:	83 c4 08             	add    $0x8,%esp
  1002ba:	ff 45 f8             	incl   -0x8(%ebp)
  1002bd:	eb 5e                	jmp    10031d <diskRead+0xca>
  1002bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002c5:	01 d0                	add    %edx,%eax
  1002c7:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1002cc:	85 c0                	test   %eax,%eax
  1002ce:	79 07                	jns    1002d7 <diskRead+0x84>
  1002d0:	48                   	dec    %eax
  1002d1:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1002d6:	40                   	inc    %eax
  1002d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1002da:	8b 55 08             	mov    0x8(%ebp),%edx
  1002dd:	01 ca                	add    %ecx,%edx
  1002df:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  1002e6:	88 02                	mov    %al,(%edx)
  1002e8:	ff 45 fc             	incl   -0x4(%ebp)
  1002eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f1:	01 d0                	add    %edx,%eax
  1002f3:	25 ff 01 00 00       	and    $0x1ff,%eax
  1002f8:	85 c0                	test   %eax,%eax
  1002fa:	75 21                	jne    10031d <diskRead+0xca>
  1002fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002ff:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  100305:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100308:	01 d0                	add    %edx,%eax
  10030a:	50                   	push   %eax
  10030b:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100311:	50                   	push   %eax
  100312:	e8 a8 fd ff ff       	call   1000bf <readSect>
  100317:	83 c4 08             	add    $0x8,%esp
  10031a:	ff 45 f8             	incl   -0x8(%ebp)
  10031d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100320:	0f af 45 10          	imul   0x10(%ebp),%eax
  100324:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  100327:	7c 96                	jl     1002bf <diskRead+0x6c>
  100329:	90                   	nop
  10032a:	c9                   	leave  
  10032b:	c3                   	ret    

0010032c <diskWrite>:
  10032c:	55                   	push   %ebp
  10032d:	89 e5                	mov    %esp,%ebp
  10032f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  100335:	e8 0b 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10033a:	05 c6 5c 00 00       	add    $0x5cc6,%eax
  10033f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100346:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10034d:	8b 45 14             	mov    0x14(%ebp),%eax
  100350:	85 c0                	test   %eax,%eax
  100352:	79 05                	jns    100359 <diskWrite+0x2d>
  100354:	05 ff 01 00 00       	add    $0x1ff,%eax
  100359:	c1 f8 09             	sar    $0x9,%eax
  10035c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10035f:	8b 45 14             	mov    0x14(%ebp),%eax
  100362:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100367:	85 c0                	test   %eax,%eax
  100369:	79 07                	jns    100372 <diskWrite+0x46>
  10036b:	48                   	dec    %eax
  10036c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100371:	40                   	inc    %eax
  100372:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100375:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100378:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10037e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100381:	01 d0                	add    %edx,%eax
  100383:	50                   	push   %eax
  100384:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10038a:	50                   	push   %eax
  10038b:	e8 2f fd ff ff       	call   1000bf <readSect>
  100390:	83 c4 08             	add    $0x8,%esp
  100393:	eb 7f                	jmp    100414 <diskWrite+0xe8>
  100395:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100398:	8b 45 08             	mov    0x8(%ebp),%eax
  10039b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10039e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003a4:	01 d0                	add    %edx,%eax
  1003a6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1003ab:	85 c0                	test   %eax,%eax
  1003ad:	79 07                	jns    1003b6 <diskWrite+0x8a>
  1003af:	48                   	dec    %eax
  1003b0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1003b5:	40                   	inc    %eax
  1003b6:	89 c2                	mov    %eax,%edx
  1003b8:	8a 01                	mov    (%ecx),%al
  1003ba:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  1003c1:	ff 45 fc             	incl   -0x4(%ebp)
  1003c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ca:	01 d0                	add    %edx,%eax
  1003cc:	25 ff 01 00 00       	and    $0x1ff,%eax
  1003d1:	85 c0                	test   %eax,%eax
  1003d3:	75 3f                	jne    100414 <diskWrite+0xe8>
  1003d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003de:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e1:	01 d0                	add    %edx,%eax
  1003e3:	50                   	push   %eax
  1003e4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1003ea:	50                   	push   %eax
  1003eb:	e8 9b fd ff ff       	call   10018b <writeSect>
  1003f0:	83 c4 08             	add    $0x8,%esp
  1003f3:	ff 45 f8             	incl   -0x8(%ebp)
  1003f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003f9:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003ff:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100402:	01 d0                	add    %edx,%eax
  100404:	50                   	push   %eax
  100405:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10040b:	50                   	push   %eax
  10040c:	e8 ae fc ff ff       	call   1000bf <readSect>
  100411:	83 c4 08             	add    $0x8,%esp
  100414:	8b 45 0c             	mov    0xc(%ebp),%eax
  100417:	0f af 45 10          	imul   0x10(%ebp),%eax
  10041b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10041e:	0f 8c 71 ff ff ff    	jl     100395 <diskWrite+0x69>
  100424:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100427:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10042d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100430:	01 d0                	add    %edx,%eax
  100432:	50                   	push   %eax
  100433:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100439:	50                   	push   %eax
  10043a:	e8 4c fd ff ff       	call   10018b <writeSect>
  10043f:	83 c4 08             	add    $0x8,%esp
  100442:	90                   	nop
  100443:	c9                   	leave  
  100444:	c3                   	ret    

00100445 <__x86.get_pc_thunk.ax>:
  100445:	8b 04 24             	mov    (%esp),%eax
  100448:	c3                   	ret    

00100449 <readSuperBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	53                   	push   %ebx
  10044d:	83 ec 04             	sub    $0x4,%esp
  100450:	e8 f0 ff ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100455:	05 ab 5b 00 00       	add    $0x5bab,%eax
  10045a:	6a 00                	push   $0x0
  10045c:	6a 01                	push   $0x1
  10045e:	68 00 04 00 00       	push   $0x400
  100463:	ff 75 08             	pushl  0x8(%ebp)
  100466:	89 c3                	mov    %eax,%ebx
  100468:	e8 e6 fd ff ff       	call   100253 <diskRead>
  10046d:	83 c4 10             	add    $0x10,%esp
  100470:	b8 00 00 00 00       	mov    $0x0,%eax
  100475:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100478:	c9                   	leave  
  100479:	c3                   	ret    

0010047a <readBlock>:
  10047a:	55                   	push   %ebp
  10047b:	89 e5                	mov    %esp,%ebp
  10047d:	56                   	push   %esi
  10047e:	53                   	push   %ebx
  10047f:	83 ec 20             	sub    $0x20,%esp
  100482:	e8 ae 03 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100487:	81 c3 79 5b 00 00    	add    $0x5b79,%ebx
  10048d:	89 e0                	mov    %esp,%eax
  10048f:	89 c6                	mov    %eax,%esi
  100491:	8b 45 08             	mov    0x8(%ebp),%eax
  100494:	8b 40 14             	mov    0x14(%eax),%eax
  100497:	85 c0                	test   %eax,%eax
  100499:	79 03                	jns    10049e <readBlock+0x24>
  10049b:	83 c0 03             	add    $0x3,%eax
  10049e:	c1 f8 02             	sar    $0x2,%eax
  1004a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a4:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  1004ab:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1004ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b1:	01 d0                	add    %edx,%eax
  1004b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1004b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b9:	8d 50 ff             	lea    -0x1(%eax),%edx
  1004bc:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1004bf:	c1 e0 02             	shl    $0x2,%eax
  1004c2:	8d 50 03             	lea    0x3(%eax),%edx
  1004c5:	b8 10 00 00 00       	mov    $0x10,%eax
  1004ca:	48                   	dec    %eax
  1004cb:	01 d0                	add    %edx,%eax
  1004cd:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004d2:	ba 00 00 00 00       	mov    $0x0,%edx
  1004d7:	f7 f1                	div    %ecx
  1004d9:	6b c0 10             	imul   $0x10,%eax,%eax
  1004dc:	29 c4                	sub    %eax,%esp
  1004de:	89 e0                	mov    %esp,%eax
  1004e0:	83 c0 03             	add    $0x3,%eax
  1004e3:	c1 e8 02             	shr    $0x2,%eax
  1004e6:	c1 e0 02             	shl    $0x2,%eax
  1004e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1004ef:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004f2:	7d 2b                	jge    10051f <readBlock+0xa5>
  1004f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f7:	8b 55 10             	mov    0x10(%ebp),%edx
  1004fa:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004fe:	c1 e0 09             	shl    $0x9,%eax
  100501:	89 c2                	mov    %eax,%edx
  100503:	8b 45 08             	mov    0x8(%ebp),%eax
  100506:	8b 40 14             	mov    0x14(%eax),%eax
  100509:	52                   	push   %edx
  10050a:	50                   	push   %eax
  10050b:	6a 01                	push   $0x1
  10050d:	ff 75 14             	pushl  0x14(%ebp)
  100510:	e8 3e fd ff ff       	call   100253 <diskRead>
  100515:	83 c4 10             	add    $0x10,%esp
  100518:	b8 00 00 00 00       	mov    $0x0,%eax
  10051d:	eb 5d                	jmp    10057c <readBlock+0x102>
  10051f:	8b 45 10             	mov    0x10(%ebp),%eax
  100522:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  100525:	7d 50                	jge    100577 <readBlock+0xfd>
  100527:	8b 45 0c             	mov    0xc(%ebp),%eax
  10052a:	8b 40 44             	mov    0x44(%eax),%eax
  10052d:	c1 e0 09             	shl    $0x9,%eax
  100530:	89 c1                	mov    %eax,%ecx
  100532:	8b 45 08             	mov    0x8(%ebp),%eax
  100535:	8b 50 14             	mov    0x14(%eax),%edx
  100538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10053b:	51                   	push   %ecx
  10053c:	52                   	push   %edx
  10053d:	6a 01                	push   $0x1
  10053f:	50                   	push   %eax
  100540:	e8 0e fd ff ff       	call   100253 <diskRead>
  100545:	83 c4 10             	add    $0x10,%esp
  100548:	8b 45 10             	mov    0x10(%ebp),%eax
  10054b:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10054e:	89 c2                	mov    %eax,%edx
  100550:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100553:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100556:	c1 e0 09             	shl    $0x9,%eax
  100559:	89 c2                	mov    %eax,%edx
  10055b:	8b 45 08             	mov    0x8(%ebp),%eax
  10055e:	8b 40 14             	mov    0x14(%eax),%eax
  100561:	52                   	push   %edx
  100562:	50                   	push   %eax
  100563:	6a 01                	push   $0x1
  100565:	ff 75 14             	pushl  0x14(%ebp)
  100568:	e8 e6 fc ff ff       	call   100253 <diskRead>
  10056d:	83 c4 10             	add    $0x10,%esp
  100570:	b8 00 00 00 00       	mov    $0x0,%eax
  100575:	eb 05                	jmp    10057c <readBlock+0x102>
  100577:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10057c:	89 f4                	mov    %esi,%esp
  10057e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100581:	5b                   	pop    %ebx
  100582:	5e                   	pop    %esi
  100583:	5d                   	pop    %ebp
  100584:	c3                   	ret    

00100585 <readInode>:
  100585:	55                   	push   %ebp
  100586:	89 e5                	mov    %esp,%ebp
  100588:	57                   	push   %edi
  100589:	56                   	push   %esi
  10058a:	53                   	push   %ebx
  10058b:	83 ec 3c             	sub    $0x3c,%esp
  10058e:	e8 a2 02 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100593:	81 c3 6d 5a 00 00    	add    $0x5a6d,%ebx
  100599:	89 e0                	mov    %esp,%eax
  10059b:	89 c6                	mov    %eax,%esi
  10059d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1005a4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1005ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1005b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1005b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1005bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1005c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1005c5:	8b 40 14             	mov    0x14(%eax),%eax
  1005c8:	8d 50 ff             	lea    -0x1(%eax),%edx
  1005cb:	89 55 d0             	mov    %edx,-0x30(%ebp)
  1005ce:	89 c2                	mov    %eax,%edx
  1005d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1005d5:	48                   	dec    %eax
  1005d6:	01 d0                	add    %edx,%eax
  1005d8:	bf 10 00 00 00       	mov    $0x10,%edi
  1005dd:	ba 00 00 00 00       	mov    $0x0,%edx
  1005e2:	f7 f7                	div    %edi
  1005e4:	6b c0 10             	imul   $0x10,%eax,%eax
  1005e7:	29 c4                	sub    %eax,%esp
  1005e9:	89 e0                	mov    %esp,%eax
  1005eb:	83 c0 00             	add    $0x0,%eax
  1005ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ff:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  100606:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  10060d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  100611:	74 0e                	je     100621 <readInode+0x9c>
  100613:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100616:	8b 45 14             	mov    0x14(%ebp),%eax
  100619:	01 d0                	add    %edx,%eax
  10061b:	8a 00                	mov    (%eax),%al
  10061d:	84 c0                	test   %al,%al
  10061f:	75 0a                	jne    10062b <readInode+0xa6>
  100621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100626:	e9 00 02 00 00       	jmp    10082b <readInode+0x2a6>
  10062b:	83 ec 04             	sub    $0x4,%esp
  10062e:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100631:	50                   	push   %eax
  100632:	6a 2f                	push   $0x2f
  100634:	ff 75 14             	pushl  0x14(%ebp)
  100637:	e8 8a 39 00 00       	call   103fc6 <stringChr>
  10063c:	83 c4 10             	add    $0x10,%esp
  10063f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100642:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100646:	74 07                	je     10064f <readInode+0xca>
  100648:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10064b:	85 c0                	test   %eax,%eax
  10064d:	74 0a                	je     100659 <readInode+0xd4>
  10064f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100654:	e9 d2 01 00 00       	jmp    10082b <readInode+0x2a6>
  100659:	ff 45 e4             	incl   -0x1c(%ebp)
  10065c:	8b 45 08             	mov    0x8(%ebp),%eax
  10065f:	8b 40 20             	mov    0x20(%eax),%eax
  100662:	c1 e0 09             	shl    $0x9,%eax
  100665:	89 c2                	mov    %eax,%edx
  100667:	8b 45 10             	mov    0x10(%ebp),%eax
  10066a:	89 10                	mov    %edx,(%eax)
  10066c:	8b 45 10             	mov    0x10(%ebp),%eax
  10066f:	8b 00                	mov    (%eax),%eax
  100671:	50                   	push   %eax
  100672:	6a 01                	push   $0x1
  100674:	68 80 00 00 00       	push   $0x80
  100679:	ff 75 0c             	pushl  0xc(%ebp)
  10067c:	e8 d2 fb ff ff       	call   100253 <diskRead>
  100681:	83 c4 10             	add    $0x10,%esp
  100684:	e9 8b 01 00 00       	jmp    100814 <readInode+0x28f>
  100689:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10068c:	8b 45 14             	mov    0x14(%ebp),%eax
  10068f:	01 c2                	add    %eax,%edx
  100691:	83 ec 04             	sub    $0x4,%esp
  100694:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100697:	50                   	push   %eax
  100698:	6a 2f                	push   $0x2f
  10069a:	52                   	push   %edx
  10069b:	e8 26 39 00 00       	call   103fc6 <stringChr>
  1006a0:	83 c4 10             	add    $0x10,%esp
  1006a3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006a6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1006aa:	75 11                	jne    1006bd <readInode+0x138>
  1006ac:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1006af:	85 c0                	test   %eax,%eax
  1006b1:	75 0a                	jne    1006bd <readInode+0x138>
  1006b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006b8:	e9 6e 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006bd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006c1:	75 09                	jne    1006cc <readInode+0x147>
  1006c3:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  1006ca:	eb 15                	jmp    1006e1 <readInode+0x15c>
  1006cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006cf:	8b 00                	mov    (%eax),%eax
  1006d1:	66 83 f8 01          	cmp    $0x1,%ax
  1006d5:	75 0a                	jne    1006e1 <readInode+0x15c>
  1006d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006dc:	e9 4a 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006e4:	8b 40 04             	mov    0x4(%eax),%eax
  1006e7:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006ea:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006f1:	e9 ea 00 00 00       	jmp    1007e0 <readInode+0x25b>
  1006f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f9:	50                   	push   %eax
  1006fa:	ff 75 d8             	pushl  -0x28(%ebp)
  1006fd:	ff 75 0c             	pushl  0xc(%ebp)
  100700:	ff 75 08             	pushl  0x8(%ebp)
  100703:	e8 72 fd ff ff       	call   10047a <readBlock>
  100708:	83 c4 10             	add    $0x10,%esp
  10070b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10070e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100712:	75 0a                	jne    10071e <readInode+0x199>
  100714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100719:	e9 0d 01 00 00       	jmp    10082b <readInode+0x2a6>
  10071e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  100721:	89 45 c8             	mov    %eax,-0x38(%ebp)
  100724:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10072b:	e9 85 00 00 00       	jmp    1007b5 <readInode+0x230>
  100730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100733:	c1 e0 07             	shl    $0x7,%eax
  100736:	89 c2                	mov    %eax,%edx
  100738:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10073b:	01 d0                	add    %edx,%eax
  10073d:	8b 00                	mov    (%eax),%eax
  10073f:	85 c0                	test   %eax,%eax
  100741:	74 6e                	je     1007b1 <readInode+0x22c>
  100743:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100746:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100749:	8b 55 14             	mov    0x14(%ebp),%edx
  10074c:	01 d1                	add    %edx,%ecx
  10074e:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100751:	89 d7                	mov    %edx,%edi
  100753:	c1 e7 07             	shl    $0x7,%edi
  100756:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100759:	01 fa                	add    %edi,%edx
  10075b:	83 c2 04             	add    $0x4,%edx
  10075e:	83 ec 04             	sub    $0x4,%esp
  100761:	50                   	push   %eax
  100762:	51                   	push   %ecx
  100763:	52                   	push   %edx
  100764:	e8 84 39 00 00       	call   1040ed <stringCmp>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	85 c0                	test   %eax,%eax
  10076e:	75 42                	jne    1007b2 <readInode+0x22d>
  100770:	8b 45 08             	mov    0x8(%ebp),%eax
  100773:	8b 40 20             	mov    0x20(%eax),%eax
  100776:	c1 e0 09             	shl    $0x9,%eax
  100779:	89 c2                	mov    %eax,%edx
  10077b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10077e:	c1 e0 07             	shl    $0x7,%eax
  100781:	89 c1                	mov    %eax,%ecx
  100783:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100786:	01 c8                	add    %ecx,%eax
  100788:	8b 00                	mov    (%eax),%eax
  10078a:	48                   	dec    %eax
  10078b:	c1 e0 07             	shl    $0x7,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	89 c2                	mov    %eax,%edx
  100792:	8b 45 10             	mov    0x10(%ebp),%eax
  100795:	89 10                	mov    %edx,(%eax)
  100797:	8b 45 10             	mov    0x10(%ebp),%eax
  10079a:	8b 00                	mov    (%eax),%eax
  10079c:	50                   	push   %eax
  10079d:	6a 01                	push   $0x1
  10079f:	68 80 00 00 00       	push   $0x80
  1007a4:	ff 75 0c             	pushl  0xc(%ebp)
  1007a7:	e8 a7 fa ff ff       	call   100253 <diskRead>
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	eb 1a                	jmp    1007cb <readInode+0x246>
  1007b1:	90                   	nop
  1007b2:	ff 45 dc             	incl   -0x24(%ebp)
  1007b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007b8:	8b 40 14             	mov    0x14(%eax),%eax
  1007bb:	c1 e8 07             	shr    $0x7,%eax
  1007be:	89 c2                	mov    %eax,%edx
  1007c0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007c3:	39 c2                	cmp    %eax,%edx
  1007c5:	0f 87 65 ff ff ff    	ja     100730 <readInode+0x1ab>
  1007cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1007ce:	8b 40 14             	mov    0x14(%eax),%eax
  1007d1:	c1 e8 07             	shr    $0x7,%eax
  1007d4:	89 c2                	mov    %eax,%edx
  1007d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007d9:	39 c2                	cmp    %eax,%edx
  1007db:	77 11                	ja     1007ee <readInode+0x269>
  1007dd:	ff 45 d8             	incl   -0x28(%ebp)
  1007e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007e3:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007e6:	0f 8c 0a ff ff ff    	jl     1006f6 <readInode+0x171>
  1007ec:	eb 01                	jmp    1007ef <readInode+0x26a>
  1007ee:	90                   	nop
  1007ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007f2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007f5:	7d 16                	jge    10080d <readInode+0x288>
  1007f7:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007fb:	75 09                	jne    100806 <readInode+0x281>
  1007fd:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100800:	40                   	inc    %eax
  100801:	01 45 e4             	add    %eax,-0x1c(%ebp)
  100804:	eb 0e                	jmp    100814 <readInode+0x28f>
  100806:	b8 00 00 00 00       	mov    $0x0,%eax
  10080b:	eb 1e                	jmp    10082b <readInode+0x2a6>
  10080d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100812:	eb 17                	jmp    10082b <readInode+0x2a6>
  100814:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100817:	8b 45 14             	mov    0x14(%ebp),%eax
  10081a:	01 d0                	add    %edx,%eax
  10081c:	8a 00                	mov    (%eax),%al
  10081e:	84 c0                	test   %al,%al
  100820:	0f 85 63 fe ff ff    	jne    100689 <readInode+0x104>
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
  10082b:	89 f4                	mov    %esi,%esp
  10082d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100830:	5b                   	pop    %ebx
  100831:	5e                   	pop    %esi
  100832:	5f                   	pop    %edi
  100833:	5d                   	pop    %ebp
  100834:	c3                   	ret    

00100835 <__x86.get_pc_thunk.bx>:
  100835:	8b 1c 24             	mov    (%esp),%ebx
  100838:	c3                   	ret    

00100839 <outByte>:
  100839:	55                   	push   %ebp
  10083a:	89 e5                	mov    %esp,%ebp
  10083c:	83 ec 08             	sub    $0x8,%esp
  10083f:	e8 01 fc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100844:	05 bc 57 00 00       	add    $0x57bc,%eax
  100849:	8b 45 08             	mov    0x8(%ebp),%eax
  10084c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10084f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100853:	88 d0                	mov    %dl,%al
  100855:	88 45 f8             	mov    %al,-0x8(%ebp)
  100858:	8a 45 f8             	mov    -0x8(%ebp),%al
  10085b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10085e:	ee                   	out    %al,(%dx)
  10085f:	90                   	nop
  100860:	c9                   	leave  
  100861:	c3                   	ret    

00100862 <initIntr>:
  100862:	55                   	push   %ebp
  100863:	89 e5                	mov    %esp,%ebp
  100865:	e8 db fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10086a:	05 96 57 00 00       	add    $0x5796,%eax
  10086f:	6a 11                	push   $0x11
  100871:	6a 20                	push   $0x20
  100873:	e8 c1 ff ff ff       	call   100839 <outByte>
  100878:	83 c4 08             	add    $0x8,%esp
  10087b:	6a 11                	push   $0x11
  10087d:	68 a0 00 00 00       	push   $0xa0
  100882:	e8 b2 ff ff ff       	call   100839 <outByte>
  100887:	83 c4 08             	add    $0x8,%esp
  10088a:	6a 20                	push   $0x20
  10088c:	6a 21                	push   $0x21
  10088e:	e8 a6 ff ff ff       	call   100839 <outByte>
  100893:	83 c4 08             	add    $0x8,%esp
  100896:	6a 28                	push   $0x28
  100898:	68 a1 00 00 00       	push   $0xa1
  10089d:	e8 97 ff ff ff       	call   100839 <outByte>
  1008a2:	83 c4 08             	add    $0x8,%esp
  1008a5:	6a 04                	push   $0x4
  1008a7:	6a 21                	push   $0x21
  1008a9:	e8 8b ff ff ff       	call   100839 <outByte>
  1008ae:	83 c4 08             	add    $0x8,%esp
  1008b1:	6a 02                	push   $0x2
  1008b3:	68 a1 00 00 00       	push   $0xa1
  1008b8:	e8 7c ff ff ff       	call   100839 <outByte>
  1008bd:	83 c4 08             	add    $0x8,%esp
  1008c0:	6a 03                	push   $0x3
  1008c2:	6a 21                	push   $0x21
  1008c4:	e8 70 ff ff ff       	call   100839 <outByte>
  1008c9:	83 c4 08             	add    $0x8,%esp
  1008cc:	6a 03                	push   $0x3
  1008ce:	68 a1 00 00 00       	push   $0xa1
  1008d3:	e8 61 ff ff ff       	call   100839 <outByte>
  1008d8:	83 c4 08             	add    $0x8,%esp
  1008db:	90                   	nop
  1008dc:	c9                   	leave  
  1008dd:	c3                   	ret    

001008de <saveIdt>:
  1008de:	55                   	push   %ebp
  1008df:	89 e5                	mov    %esp,%ebp
  1008e1:	e8 5f fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1008e6:	05 1a 57 00 00       	add    $0x571a,%eax
  1008eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1008ee:	4a                   	dec    %edx
  1008ef:	66 89 90 20 01 00 00 	mov    %dx,0x120(%eax)
  1008f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1008f9:	66 89 90 22 01 00 00 	mov    %dx,0x122(%eax)
  100900:	8b 55 08             	mov    0x8(%ebp),%edx
  100903:	c1 ea 10             	shr    $0x10,%edx
  100906:	66 89 90 24 01 00 00 	mov    %dx,0x124(%eax)
  10090d:	8d 80 20 01 00 00    	lea    0x120(%eax),%eax
  100913:	0f 01 18             	lidtl  (%eax)
  100916:	90                   	nop
  100917:	5d                   	pop    %ebp
  100918:	c3                   	ret    

00100919 <setIntr>:
  100919:	55                   	push   %ebp
  10091a:	89 e5                	mov    %esp,%ebp
  10091c:	e8 24 fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100921:	05 df 56 00 00       	add    $0x56df,%eax
  100926:	8b 45 10             	mov    0x10(%ebp),%eax
  100929:	8b 55 08             	mov    0x8(%ebp),%edx
  10092c:	66 89 02             	mov    %ax,(%edx)
  10092f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100932:	c1 e0 03             	shl    $0x3,%eax
  100935:	8b 55 08             	mov    0x8(%ebp),%edx
  100938:	66 89 42 02          	mov    %ax,0x2(%edx)
  10093c:	8b 45 08             	mov    0x8(%ebp),%eax
  10093f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100943:	8b 45 08             	mov    0x8(%ebp),%eax
  100946:	8a 50 05             	mov    0x5(%eax),%dl
  100949:	83 e2 f0             	and    $0xfffffff0,%edx
  10094c:	83 ca 0e             	or     $0xe,%edx
  10094f:	88 50 05             	mov    %dl,0x5(%eax)
  100952:	8b 45 08             	mov    0x8(%ebp),%eax
  100955:	8a 50 05             	mov    0x5(%eax),%dl
  100958:	83 e2 ef             	and    $0xffffffef,%edx
  10095b:	88 50 05             	mov    %dl,0x5(%eax)
  10095e:	8b 45 14             	mov    0x14(%ebp),%eax
  100961:	88 c2                	mov    %al,%dl
  100963:	83 e2 03             	and    $0x3,%edx
  100966:	8b 45 08             	mov    0x8(%ebp),%eax
  100969:	83 e2 03             	and    $0x3,%edx
  10096c:	88 d1                	mov    %dl,%cl
  10096e:	c1 e1 05             	shl    $0x5,%ecx
  100971:	8a 50 05             	mov    0x5(%eax),%dl
  100974:	83 e2 9f             	and    $0xffffff9f,%edx
  100977:	09 ca                	or     %ecx,%edx
  100979:	88 50 05             	mov    %dl,0x5(%eax)
  10097c:	8b 45 08             	mov    0x8(%ebp),%eax
  10097f:	8a 50 05             	mov    0x5(%eax),%dl
  100982:	83 ca 80             	or     $0xffffff80,%edx
  100985:	88 50 05             	mov    %dl,0x5(%eax)
  100988:	8b 45 10             	mov    0x10(%ebp),%eax
  10098b:	c1 e8 10             	shr    $0x10,%eax
  10098e:	8b 55 08             	mov    0x8(%ebp),%edx
  100991:	66 89 42 06          	mov    %ax,0x6(%edx)
  100995:	90                   	nop
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <setTrap>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	e8 a5 fa ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1009a0:	05 60 56 00 00       	add    $0x5660,%eax
  1009a5:	8b 45 10             	mov    0x10(%ebp),%eax
  1009a8:	8b 55 08             	mov    0x8(%ebp),%edx
  1009ab:	66 89 02             	mov    %ax,(%edx)
  1009ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009b1:	c1 e0 03             	shl    $0x3,%eax
  1009b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1009b7:	66 89 42 02          	mov    %ax,0x2(%edx)
  1009bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1009be:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1009c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009c5:	8a 50 05             	mov    0x5(%eax),%dl
  1009c8:	83 ca 0f             	or     $0xf,%edx
  1009cb:	88 50 05             	mov    %dl,0x5(%eax)
  1009ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d1:	8a 50 05             	mov    0x5(%eax),%dl
  1009d4:	83 e2 ef             	and    $0xffffffef,%edx
  1009d7:	88 50 05             	mov    %dl,0x5(%eax)
  1009da:	8b 45 14             	mov    0x14(%ebp),%eax
  1009dd:	88 c2                	mov    %al,%dl
  1009df:	83 e2 03             	and    $0x3,%edx
  1009e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009e5:	83 e2 03             	and    $0x3,%edx
  1009e8:	88 d1                	mov    %dl,%cl
  1009ea:	c1 e1 05             	shl    $0x5,%ecx
  1009ed:	8a 50 05             	mov    0x5(%eax),%dl
  1009f0:	83 e2 9f             	and    $0xffffff9f,%edx
  1009f3:	09 ca                	or     %ecx,%edx
  1009f5:	88 50 05             	mov    %dl,0x5(%eax)
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	8a 50 05             	mov    0x5(%eax),%dl
  1009fe:	83 ca 80             	or     $0xffffff80,%edx
  100a01:	88 50 05             	mov    %dl,0x5(%eax)
  100a04:	8b 45 10             	mov    0x10(%ebp),%eax
  100a07:	c1 e8 10             	shr    $0x10,%eax
  100a0a:	8b 55 08             	mov    0x8(%ebp),%edx
  100a0d:	66 89 42 06          	mov    %ax,0x6(%edx)
  100a11:	90                   	nop
  100a12:	5d                   	pop    %ebp
  100a13:	c3                   	ret    

00100a14 <initIdt>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	53                   	push   %ebx
  100a18:	83 ec 10             	sub    $0x10,%esp
  100a1b:	e8 15 fe ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100a20:	81 c3 e0 55 00 00    	add    $0x55e0,%ebx
  100a26:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a2d:	eb 2b                	jmp    100a5a <initIdt+0x46>
  100a2f:	c7 c0 6b 42 10 00    	mov    $0x10426b,%eax
  100a35:	89 c2                	mov    %eax,%edx
  100a37:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a3a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100a41:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a47:	01 c8                	add    %ecx,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	52                   	push   %edx
  100a4c:	6a 01                	push   $0x1
  100a4e:	50                   	push   %eax
  100a4f:	e8 44 ff ff ff       	call   100998 <setTrap>
  100a54:	83 c4 10             	add    $0x10,%esp
  100a57:	ff 45 f8             	incl   -0x8(%ebp)
  100a5a:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  100a61:	7e cc                	jle    100a2f <initIdt+0x1b>
  100a63:	c7 c0 75 42 10 00    	mov    $0x104275,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 79 42 10 00    	mov    $0x104279,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 7d 42 10 00    	mov    $0x10427d,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 81 42 10 00    	mov    $0x104281,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 85 42 10 00    	mov    $0x104285,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 89 42 10 00    	mov    $0x104289,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 8d 42 10 00    	mov    $0x10428d,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 91 42 10 00    	mov    $0x104291,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 95 42 10 00    	mov    $0x104295,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 9b 42 10 00    	mov    $0x10429b,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 a1 42 10 00    	mov    $0x1042a1,%eax
  100bab:	89 c2                	mov    %eax,%edx
  100bad:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100bb3:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  100bb9:	6a 03                	push   $0x3
  100bbb:	52                   	push   %edx
  100bbc:	6a 01                	push   $0x1
  100bbe:	50                   	push   %eax
  100bbf:	e8 55 fd ff ff       	call   100919 <setIntr>
  100bc4:	83 c4 10             	add    $0x10,%esp
  100bc7:	68 00 08 00 00       	push   $0x800
  100bcc:	c7 c0 40 62 10 00    	mov    $0x106240,%eax
  100bd2:	50                   	push   %eax
  100bd3:	e8 06 fd ff ff       	call   1008de <saveIdt>
  100bd8:	83 c4 08             	add    $0x8,%esp
  100bdb:	90                   	nop
  100bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    

00100be1 <enableInterrupt>:
  100be1:	55                   	push   %ebp
  100be2:	89 e5                	mov    %esp,%ebp
  100be4:	e8 5c f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100be9:	05 17 54 00 00       	add    $0x5417,%eax
  100bee:	fb                   	sti    
  100bef:	90                   	nop
  100bf0:	5d                   	pop    %ebp
  100bf1:	c3                   	ret    

00100bf2 <disableInterrupt>:
  100bf2:	55                   	push   %ebp
  100bf3:	89 e5                	mov    %esp,%ebp
  100bf5:	e8 4b f8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100bfa:	05 06 54 00 00       	add    $0x5406,%eax
  100bff:	fa                   	cli    
  100c00:	90                   	nop
  100c01:	5d                   	pop    %ebp
  100c02:	c3                   	ret    

00100c03 <irqHandle>:
  100c03:	55                   	push   %ebp
  100c04:	89 e5                	mov    %esp,%ebp
  100c06:	56                   	push   %esi
  100c07:	53                   	push   %ebx
  100c08:	83 ec 10             	sub    $0x10,%esp
  100c0b:	e8 25 fc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100c10:	81 c3 f0 53 00 00    	add    $0x53f0,%ebx
  100c16:	b8 10 00 00 00       	mov    $0x10,%eax
  100c1b:	8e d8                	mov    %eax,%ds
  100c1d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c23:	8b 10                	mov    (%eax),%edx
  100c25:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100c2b:	89 d0                	mov    %edx,%eax
  100c2d:	01 c0                	add    %eax,%eax
  100c2f:	01 d0                	add    %edx,%eax
  100c31:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c38:	01 d0                	add    %edx,%eax
  100c3a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c41:	01 d0                	add    %edx,%eax
  100c43:	89 c2                	mov    %eax,%edx
  100c45:	c1 e2 04             	shl    $0x4,%edx
  100c48:	01 d0                	add    %edx,%eax
  100c4a:	c1 e0 02             	shl    $0x2,%eax
  100c4d:	01 c8                	add    %ecx,%eax
  100c4f:	05 4c 40 00 00       	add    $0x404c,%eax
  100c54:	8b 00                	mov    (%eax),%eax
  100c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c59:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c5f:	8b 10                	mov    (%eax),%edx
  100c61:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100c67:	8b 08                	mov    (%eax),%ecx
  100c69:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100c6f:	89 d0                	mov    %edx,%eax
  100c71:	01 c0                	add    %eax,%eax
  100c73:	01 d0                	add    %edx,%eax
  100c75:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c7c:	01 d0                	add    %edx,%eax
  100c7e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100c85:	01 d0                	add    %edx,%eax
  100c87:	89 c2                	mov    %eax,%edx
  100c89:	c1 e2 04             	shl    $0x4,%edx
  100c8c:	01 d0                	add    %edx,%eax
  100c8e:	c1 e0 02             	shl    $0x2,%eax
  100c91:	01 f0                	add    %esi,%eax
  100c93:	05 4c 40 00 00       	add    $0x404c,%eax
  100c98:	8b 10                	mov    (%eax),%edx
  100c9a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100ca0:	89 c8                	mov    %ecx,%eax
  100ca2:	01 c0                	add    %eax,%eax
  100ca4:	01 c8                	add    %ecx,%eax
  100ca6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cad:	01 c8                	add    %ecx,%eax
  100caf:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cb6:	01 c8                	add    %ecx,%eax
  100cb8:	89 c1                	mov    %eax,%ecx
  100cba:	c1 e1 04             	shl    $0x4,%ecx
  100cbd:	01 c8                	add    %ecx,%eax
  100cbf:	c1 e0 02             	shl    $0x2,%eax
  100cc2:	01 f0                	add    %esi,%eax
  100cc4:	05 50 40 00 00       	add    $0x4050,%eax
  100cc9:	89 10                	mov    %edx,(%eax)
  100ccb:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100cd1:	8b 08                	mov    (%eax),%ecx
  100cd3:	8b 55 08             	mov    0x8(%ebp),%edx
  100cd6:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100cdc:	89 c8                	mov    %ecx,%eax
  100cde:	01 c0                	add    %eax,%eax
  100ce0:	01 c8                	add    %ecx,%eax
  100ce2:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100ce9:	01 c8                	add    %ecx,%eax
  100ceb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100cf2:	01 c8                	add    %ecx,%eax
  100cf4:	89 c1                	mov    %eax,%ecx
  100cf6:	c1 e1 04             	shl    $0x4,%ecx
  100cf9:	01 c8                	add    %ecx,%eax
  100cfb:	c1 e0 02             	shl    $0x2,%eax
  100cfe:	01 f0                	add    %esi,%eax
  100d00:	05 4c 40 00 00       	add    $0x404c,%eax
  100d05:	89 10                	mov    %edx,(%eax)
  100d07:	8b 45 08             	mov    0x8(%ebp),%eax
  100d0a:	8b 40 30             	mov    0x30(%eax),%eax
  100d0d:	83 f8 21             	cmp    $0x21,%eax
  100d10:	74 3f                	je     100d51 <irqHandle+0x14e>
  100d12:	83 f8 21             	cmp    $0x21,%eax
  100d15:	77 0c                	ja     100d23 <irqHandle+0x120>
  100d17:	83 f8 0d             	cmp    $0xd,%eax
  100d1a:	74 15                	je     100d31 <irqHandle+0x12e>
  100d1c:	83 f8 20             	cmp    $0x20,%eax
  100d1f:	74 20                	je     100d41 <irqHandle+0x13e>
  100d21:	eb 4e                	jmp    100d71 <irqHandle+0x16e>
  100d23:	3d 80 00 00 00       	cmp    $0x80,%eax
  100d28:	74 37                	je     100d61 <irqHandle+0x15e>
  100d2a:	83 f8 ff             	cmp    $0xffffffff,%eax
  100d2d:	74 58                	je     100d87 <irqHandle+0x184>
  100d2f:	eb 40                	jmp    100d71 <irqHandle+0x16e>
  100d31:	83 ec 0c             	sub    $0xc,%esp
  100d34:	ff 75 08             	pushl  0x8(%ebp)
  100d37:	e8 50 1b 00 00       	call   10288c <GProtectFaultHandle>
  100d3c:	83 c4 10             	add    $0x10,%esp
  100d3f:	eb 47                	jmp    100d88 <irqHandle+0x185>
  100d41:	83 ec 0c             	sub    $0xc,%esp
  100d44:	ff 75 08             	pushl  0x8(%ebp)
  100d47:	e8 32 01 00 00       	call   100e7e <timerHandle>
  100d4c:	83 c4 10             	add    $0x10,%esp
  100d4f:	eb 37                	jmp    100d88 <irqHandle+0x185>
  100d51:	83 ec 0c             	sub    $0xc,%esp
  100d54:	ff 75 08             	pushl  0x8(%ebp)
  100d57:	e8 8b 06 00 00       	call   1013e7 <keyboardHandle>
  100d5c:	83 c4 10             	add    $0x10,%esp
  100d5f:	eb 27                	jmp    100d88 <irqHandle+0x185>
  100d61:	83 ec 0c             	sub    $0xc,%esp
  100d64:	ff 75 08             	pushl  0x8(%ebp)
  100d67:	e8 61 00 00 00       	call   100dcd <syscallHandle>
  100d6c:	83 c4 10             	add    $0x10,%esp
  100d6f:	eb 17                	jmp    100d88 <irqHandle+0x185>
  100d71:	83 ec 08             	sub    $0x8,%esp
  100d74:	6a 6a                	push   $0x6a
  100d76:	8d 83 c8 e2 ff ff    	lea    -0x1d38(%ebx),%eax
  100d7c:	50                   	push   %eax
  100d7d:	e8 17 32 00 00       	call   103f99 <abort>
  100d82:	83 c4 10             	add    $0x10,%esp
  100d85:	eb 01                	jmp    100d88 <irqHandle+0x185>
  100d87:	90                   	nop
  100d88:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100d8e:	8b 10                	mov    (%eax),%edx
  100d90:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100d96:	89 d0                	mov    %edx,%eax
  100d98:	01 c0                	add    %eax,%eax
  100d9a:	01 d0                	add    %edx,%eax
  100d9c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100da3:	01 d0                	add    %edx,%eax
  100da5:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100dac:	01 d0                	add    %edx,%eax
  100dae:	89 c2                	mov    %eax,%edx
  100db0:	c1 e2 04             	shl    $0x4,%edx
  100db3:	01 d0                	add    %edx,%eax
  100db5:	c1 e0 02             	shl    $0x2,%eax
  100db8:	01 c8                	add    %ecx,%eax
  100dba:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  100dc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dc3:	89 02                	mov    %eax,(%edx)
  100dc5:	90                   	nop
  100dc6:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100dc9:	5b                   	pop    %ebx
  100dca:	5e                   	pop    %esi
  100dcb:	5d                   	pop    %ebp
  100dcc:	c3                   	ret    

00100dcd <syscallHandle>:
  100dcd:	55                   	push   %ebp
  100dce:	89 e5                	mov    %esp,%ebp
  100dd0:	83 ec 08             	sub    $0x8,%esp
  100dd3:	e8 6d f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100dd8:	05 28 52 00 00       	add    $0x5228,%eax
  100ddd:	8b 55 08             	mov    0x8(%ebp),%edx
  100de0:	8b 52 2c             	mov    0x2c(%edx),%edx
  100de3:	83 fa 07             	cmp    $0x7,%edx
  100de6:	0f 87 8e 00 00 00    	ja     100e7a <.L23+0x10>
  100dec:	c1 e2 02             	shl    $0x2,%edx
  100def:	8b 94 02 dc e2 ff ff 	mov    -0x1d24(%edx,%eax,1),%edx
  100df6:	01 d0                	add    %edx,%eax
  100df8:	ff e0                	jmp    *%eax

00100dfa <.L15>:
  100dfa:	83 ec 0c             	sub    $0xc,%esp
  100dfd:	ff 75 08             	pushl  0x8(%ebp)
  100e00:	e8 bb 06 00 00       	call   1014c0 <syscallWrite>
  100e05:	83 c4 10             	add    $0x10,%esp
  100e08:	eb 71                	jmp    100e7b <.L23+0x11>

00100e0a <.L21>:
  100e0a:	83 ec 0c             	sub    $0xc,%esp
  100e0d:	ff 75 08             	pushl  0x8(%ebp)
  100e10:	e8 b1 08 00 00       	call   1016c6 <syscallRead>
  100e15:	83 c4 10             	add    $0x10,%esp
  100e18:	eb 61                	jmp    100e7b <.L23+0x11>

00100e1a <.L17>:
  100e1a:	83 ec 0c             	sub    $0xc,%esp
  100e1d:	ff 75 08             	pushl  0x8(%ebp)
  100e20:	e8 24 0c 00 00       	call   101a49 <syscallFork>
  100e25:	83 c4 10             	add    $0x10,%esp
  100e28:	eb 51                	jmp    100e7b <.L23+0x11>

00100e2a <.L18>:
  100e2a:	83 ec 0c             	sub    $0xc,%esp
  100e2d:	ff 75 08             	pushl  0x8(%ebp)
  100e30:	e8 89 17 00 00       	call   1025be <syscallExec>
  100e35:	83 c4 10             	add    $0x10,%esp
  100e38:	eb 41                	jmp    100e7b <.L23+0x11>

00100e3a <.L19>:
  100e3a:	83 ec 0c             	sub    $0xc,%esp
  100e3d:	ff 75 08             	pushl  0x8(%ebp)
  100e40:	e8 55 18 00 00       	call   10269a <syscallSleep>
  100e45:	83 c4 10             	add    $0x10,%esp
  100e48:	eb 31                	jmp    100e7b <.L23+0x11>

00100e4a <.L20>:
  100e4a:	83 ec 0c             	sub    $0xc,%esp
  100e4d:	ff 75 08             	pushl  0x8(%ebp)
  100e50:	e8 e7 18 00 00       	call   10273c <syscallExit>
  100e55:	83 c4 10             	add    $0x10,%esp
  100e58:	eb 21                	jmp    100e7b <.L23+0x11>

00100e5a <.L22>:
  100e5a:	83 ec 0c             	sub    $0xc,%esp
  100e5d:	ff 75 08             	pushl  0x8(%ebp)
  100e60:	e8 26 19 00 00       	call   10278b <syscallSem>
  100e65:	83 c4 10             	add    $0x10,%esp
  100e68:	eb 11                	jmp    100e7b <.L23+0x11>

00100e6a <.L23>:
  100e6a:	83 ec 0c             	sub    $0xc,%esp
  100e6d:	ff 75 08             	pushl  0x8(%ebp)
  100e70:	e8 c4 19 00 00       	call   102839 <syscallGetPid>
  100e75:	83 c4 10             	add    $0x10,%esp
  100e78:	eb 01                	jmp    100e7b <.L23+0x11>
  100e7a:	90                   	nop
  100e7b:	90                   	nop
  100e7c:	c9                   	leave  
  100e7d:	c3                   	ret    

00100e7e <timerHandle>:
  100e7e:	55                   	push   %ebp
  100e7f:	89 e5                	mov    %esp,%ebp
  100e81:	56                   	push   %esi
  100e82:	53                   	push   %ebx
  100e83:	83 ec 10             	sub    $0x10,%esp
  100e86:	e8 aa f9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100e8b:	81 c3 75 51 00 00    	add    $0x5175,%ebx
  100e91:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100e97:	8b 00                	mov    (%eax),%eax
  100e99:	40                   	inc    %eax
  100e9a:	b9 09 00 00 00       	mov    $0x9,%ecx
  100e9f:	99                   	cltd   
  100ea0:	f7 f9                	idiv   %ecx
  100ea2:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100ea5:	e9 27 01 00 00       	jmp    100fd1 <timerHandle+0x153>
  100eaa:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100eb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb3:	89 d0                	mov    %edx,%eax
  100eb5:	01 c0                	add    %eax,%eax
  100eb7:	01 d0                	add    %edx,%eax
  100eb9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec0:	01 d0                	add    %edx,%eax
  100ec2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ec9:	01 d0                	add    %edx,%eax
  100ecb:	89 c2                	mov    %eax,%edx
  100ecd:	c1 e2 04             	shl    $0x4,%edx
  100ed0:	01 d0                	add    %edx,%eax
  100ed2:	c1 e0 02             	shl    $0x2,%eax
  100ed5:	01 c8                	add    %ecx,%eax
  100ed7:	05 54 40 00 00       	add    $0x4054,%eax
  100edc:	8b 00                	mov    (%eax),%eax
  100ede:	83 f8 02             	cmp    $0x2,%eax
  100ee1:	0f 85 db 00 00 00    	jne    100fc2 <timerHandle+0x144>
  100ee7:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100eed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ef0:	89 d0                	mov    %edx,%eax
  100ef2:	01 c0                	add    %eax,%eax
  100ef4:	01 d0                	add    %edx,%eax
  100ef6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100efd:	01 d0                	add    %edx,%eax
  100eff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f06:	01 d0                	add    %edx,%eax
  100f08:	89 c2                	mov    %eax,%edx
  100f0a:	c1 e2 04             	shl    $0x4,%edx
  100f0d:	01 d0                	add    %edx,%eax
  100f0f:	c1 e0 02             	shl    $0x2,%eax
  100f12:	01 c8                	add    %ecx,%eax
  100f14:	05 5c 40 00 00       	add    $0x405c,%eax
  100f19:	8b 00                	mov    (%eax),%eax
  100f1b:	8d 48 ff             	lea    -0x1(%eax),%ecx
  100f1e:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  100f24:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f27:	89 d0                	mov    %edx,%eax
  100f29:	01 c0                	add    %eax,%eax
  100f2b:	01 d0                	add    %edx,%eax
  100f2d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f34:	01 d0                	add    %edx,%eax
  100f36:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f3d:	01 d0                	add    %edx,%eax
  100f3f:	89 c2                	mov    %eax,%edx
  100f41:	c1 e2 04             	shl    $0x4,%edx
  100f44:	01 d0                	add    %edx,%eax
  100f46:	c1 e0 02             	shl    $0x2,%eax
  100f49:	01 f0                	add    %esi,%eax
  100f4b:	05 5c 40 00 00       	add    $0x405c,%eax
  100f50:	89 08                	mov    %ecx,(%eax)
  100f52:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100f58:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f5b:	89 d0                	mov    %edx,%eax
  100f5d:	01 c0                	add    %eax,%eax
  100f5f:	01 d0                	add    %edx,%eax
  100f61:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f68:	01 d0                	add    %edx,%eax
  100f6a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100f71:	01 d0                	add    %edx,%eax
  100f73:	89 c2                	mov    %eax,%edx
  100f75:	c1 e2 04             	shl    $0x4,%edx
  100f78:	01 d0                	add    %edx,%eax
  100f7a:	c1 e0 02             	shl    $0x2,%eax
  100f7d:	01 c8                	add    %ecx,%eax
  100f7f:	05 5c 40 00 00       	add    $0x405c,%eax
  100f84:	8b 00                	mov    (%eax),%eax
  100f86:	85 c0                	test   %eax,%eax
  100f88:	75 38                	jne    100fc2 <timerHandle+0x144>
  100f8a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100f90:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f93:	89 d0                	mov    %edx,%eax
  100f95:	01 c0                	add    %eax,%eax
  100f97:	01 d0                	add    %edx,%eax
  100f99:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa0:	01 d0                	add    %edx,%eax
  100fa2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100fa9:	01 d0                	add    %edx,%eax
  100fab:	89 c2                	mov    %eax,%edx
  100fad:	c1 e2 04             	shl    $0x4,%edx
  100fb0:	01 d0                	add    %edx,%eax
  100fb2:	c1 e0 02             	shl    $0x2,%eax
  100fb5:	01 c8                	add    %ecx,%eax
  100fb7:	05 54 40 00 00       	add    $0x4054,%eax
  100fbc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100fc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fc5:	40                   	inc    %eax
  100fc6:	b9 09 00 00 00       	mov    $0x9,%ecx
  100fcb:	99                   	cltd   
  100fcc:	f7 f9                	idiv   %ecx
  100fce:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100fd1:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100fd7:	8b 00                	mov    (%eax),%eax
  100fd9:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100fdc:	0f 85 c8 fe ff ff    	jne    100eaa <timerHandle+0x2c>
  100fe2:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  100fe8:	8b 10                	mov    (%eax),%edx
  100fea:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  100ff0:	89 d0                	mov    %edx,%eax
  100ff2:	01 c0                	add    %eax,%eax
  100ff4:	01 d0                	add    %edx,%eax
  100ff6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  100ffd:	01 d0                	add    %edx,%eax
  100fff:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101006:	01 d0                	add    %edx,%eax
  101008:	89 c2                	mov    %eax,%edx
  10100a:	c1 e2 04             	shl    $0x4,%edx
  10100d:	01 d0                	add    %edx,%eax
  10100f:	c1 e0 02             	shl    $0x2,%eax
  101012:	01 c8                	add    %ecx,%eax
  101014:	05 54 40 00 00       	add    $0x4054,%eax
  101019:	8b 00                	mov    (%eax),%eax
  10101b:	83 f8 01             	cmp    $0x1,%eax
  10101e:	0f 85 b0 00 00 00    	jne    1010d4 <timerHandle+0x256>
  101024:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10102a:	8b 10                	mov    (%eax),%edx
  10102c:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101032:	89 d0                	mov    %edx,%eax
  101034:	01 c0                	add    %eax,%eax
  101036:	01 d0                	add    %edx,%eax
  101038:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10103f:	01 d0                	add    %edx,%eax
  101041:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101048:	01 d0                	add    %edx,%eax
  10104a:	89 c2                	mov    %eax,%edx
  10104c:	c1 e2 04             	shl    $0x4,%edx
  10104f:	01 d0                	add    %edx,%eax
  101051:	c1 e0 02             	shl    $0x2,%eax
  101054:	01 c8                	add    %ecx,%eax
  101056:	05 58 40 00 00       	add    $0x4058,%eax
  10105b:	8b 00                	mov    (%eax),%eax
  10105d:	83 f8 10             	cmp    $0x10,%eax
  101060:	74 72                	je     1010d4 <timerHandle+0x256>
  101062:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101068:	8b 10                	mov    (%eax),%edx
  10106a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101070:	89 d0                	mov    %edx,%eax
  101072:	01 c0                	add    %eax,%eax
  101074:	01 d0                	add    %edx,%eax
  101076:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  10107d:	01 f0                	add    %esi,%eax
  10107f:	8d 34 c5 00 00 00 00 	lea    0x0(,%eax,8),%esi
  101086:	01 f0                	add    %esi,%eax
  101088:	89 c6                	mov    %eax,%esi
  10108a:	c1 e6 04             	shl    $0x4,%esi
  10108d:	01 f0                	add    %esi,%eax
  10108f:	c1 e0 02             	shl    $0x2,%eax
  101092:	01 c8                	add    %ecx,%eax
  101094:	05 58 40 00 00       	add    $0x4058,%eax
  101099:	8b 00                	mov    (%eax),%eax
  10109b:	8d 48 01             	lea    0x1(%eax),%ecx
  10109e:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1010a4:	89 d0                	mov    %edx,%eax
  1010a6:	01 c0                	add    %eax,%eax
  1010a8:	01 d0                	add    %edx,%eax
  1010aa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010b1:	01 d0                	add    %edx,%eax
  1010b3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ba:	01 d0                	add    %edx,%eax
  1010bc:	89 c2                	mov    %eax,%edx
  1010be:	c1 e2 04             	shl    $0x4,%edx
  1010c1:	01 d0                	add    %edx,%eax
  1010c3:	c1 e0 02             	shl    $0x2,%eax
  1010c6:	01 d8                	add    %ebx,%eax
  1010c8:	05 58 40 00 00       	add    $0x4058,%eax
  1010cd:	89 08                	mov    %ecx,(%eax)
  1010cf:	e9 0c 03 00 00       	jmp    1013e0 <timerHandle+0x562>
  1010d4:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1010da:	8b 10                	mov    (%eax),%edx
  1010dc:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1010e2:	89 d0                	mov    %edx,%eax
  1010e4:	01 c0                	add    %eax,%eax
  1010e6:	01 d0                	add    %edx,%eax
  1010e8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010ef:	01 d0                	add    %edx,%eax
  1010f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1010f8:	01 d0                	add    %edx,%eax
  1010fa:	89 c2                	mov    %eax,%edx
  1010fc:	c1 e2 04             	shl    $0x4,%edx
  1010ff:	01 d0                	add    %edx,%eax
  101101:	c1 e0 02             	shl    $0x2,%eax
  101104:	01 c8                	add    %ecx,%eax
  101106:	05 54 40 00 00       	add    $0x4054,%eax
  10110b:	8b 00                	mov    (%eax),%eax
  10110d:	83 f8 01             	cmp    $0x1,%eax
  101110:	75 7a                	jne    10118c <timerHandle+0x30e>
  101112:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101118:	8b 10                	mov    (%eax),%edx
  10111a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101120:	89 d0                	mov    %edx,%eax
  101122:	01 c0                	add    %eax,%eax
  101124:	01 d0                	add    %edx,%eax
  101126:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10112d:	01 d0                	add    %edx,%eax
  10112f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101136:	01 d0                	add    %edx,%eax
  101138:	89 c2                	mov    %eax,%edx
  10113a:	c1 e2 04             	shl    $0x4,%edx
  10113d:	01 d0                	add    %edx,%eax
  10113f:	c1 e0 02             	shl    $0x2,%eax
  101142:	01 c8                	add    %ecx,%eax
  101144:	05 54 40 00 00       	add    $0x4054,%eax
  101149:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10114f:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101155:	8b 10                	mov    (%eax),%edx
  101157:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10115d:	89 d0                	mov    %edx,%eax
  10115f:	01 c0                	add    %eax,%eax
  101161:	01 d0                	add    %edx,%eax
  101163:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10116a:	01 d0                	add    %edx,%eax
  10116c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101173:	01 d0                	add    %edx,%eax
  101175:	89 c2                	mov    %eax,%edx
  101177:	c1 e2 04             	shl    $0x4,%edx
  10117a:	01 d0                	add    %edx,%eax
  10117c:	c1 e0 02             	shl    $0x2,%eax
  10117f:	01 c8                	add    %ecx,%eax
  101181:	05 58 40 00 00       	add    $0x4058,%eax
  101186:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10118c:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101192:	8b 00                	mov    (%eax),%eax
  101194:	40                   	inc    %eax
  101195:	b9 09 00 00 00       	mov    $0x9,%ecx
  10119a:	99                   	cltd   
  10119b:	f7 f9                	idiv   %ecx
  10119d:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011a0:	eb 4d                	jmp    1011ef <timerHandle+0x371>
  1011a2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1011a6:	74 38                	je     1011e0 <timerHandle+0x362>
  1011a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1011ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011b1:	89 d0                	mov    %edx,%eax
  1011b3:	01 c0                	add    %eax,%eax
  1011b5:	01 d0                	add    %edx,%eax
  1011b7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011be:	01 d0                	add    %edx,%eax
  1011c0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1011c7:	01 d0                	add    %edx,%eax
  1011c9:	89 c2                	mov    %eax,%edx
  1011cb:	c1 e2 04             	shl    $0x4,%edx
  1011ce:	01 d0                	add    %edx,%eax
  1011d0:	c1 e0 02             	shl    $0x2,%eax
  1011d3:	01 c8                	add    %ecx,%eax
  1011d5:	05 54 40 00 00       	add    $0x4054,%eax
  1011da:	8b 00                	mov    (%eax),%eax
  1011dc:	85 c0                	test   %eax,%eax
  1011de:	74 1e                	je     1011fe <timerHandle+0x380>
  1011e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011e3:	40                   	inc    %eax
  1011e4:	b9 09 00 00 00       	mov    $0x9,%ecx
  1011e9:	99                   	cltd   
  1011ea:	f7 f9                	idiv   %ecx
  1011ec:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1011ef:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1011f5:	8b 00                	mov    (%eax),%eax
  1011f7:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1011fa:	75 a6                	jne    1011a2 <timerHandle+0x324>
  1011fc:	eb 01                	jmp    1011ff <timerHandle+0x381>
  1011fe:	90                   	nop
  1011ff:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101205:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101208:	89 d0                	mov    %edx,%eax
  10120a:	01 c0                	add    %eax,%eax
  10120c:	01 d0                	add    %edx,%eax
  10120e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101215:	01 d0                	add    %edx,%eax
  101217:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10121e:	01 d0                	add    %edx,%eax
  101220:	89 c2                	mov    %eax,%edx
  101222:	c1 e2 04             	shl    $0x4,%edx
  101225:	01 d0                	add    %edx,%eax
  101227:	c1 e0 02             	shl    $0x2,%eax
  10122a:	01 c8                	add    %ecx,%eax
  10122c:	05 54 40 00 00       	add    $0x4054,%eax
  101231:	8b 00                	mov    (%eax),%eax
  101233:	85 c0                	test   %eax,%eax
  101235:	74 07                	je     10123e <timerHandle+0x3c0>
  101237:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10123e:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101244:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101247:	89 10                	mov    %edx,(%eax)
  101249:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10124f:	8b 00                	mov    (%eax),%eax
  101251:	83 c0 30             	add    $0x30,%eax
  101254:	0f be c0             	movsbl %al,%eax
  101257:	83 ec 0c             	sub    $0xc,%esp
  10125a:	50                   	push   %eax
  10125b:	e8 57 28 00 00       	call   103ab7 <putChar>
  101260:	83 c4 10             	add    $0x10,%esp
  101263:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101269:	8b 10                	mov    (%eax),%edx
  10126b:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101271:	89 d0                	mov    %edx,%eax
  101273:	01 c0                	add    %eax,%eax
  101275:	01 d0                	add    %edx,%eax
  101277:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10127e:	01 d0                	add    %edx,%eax
  101280:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101287:	01 d0                	add    %edx,%eax
  101289:	89 c2                	mov    %eax,%edx
  10128b:	c1 e2 04             	shl    $0x4,%edx
  10128e:	01 d0                	add    %edx,%eax
  101290:	c1 e0 02             	shl    $0x2,%eax
  101293:	01 c8                	add    %ecx,%eax
  101295:	05 54 40 00 00       	add    $0x4054,%eax
  10129a:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012a0:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1012a6:	8b 10                	mov    (%eax),%edx
  1012a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1012ae:	89 d0                	mov    %edx,%eax
  1012b0:	01 c0                	add    %eax,%eax
  1012b2:	01 d0                	add    %edx,%eax
  1012b4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012bb:	01 d0                	add    %edx,%eax
  1012bd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012c4:	01 d0                	add    %edx,%eax
  1012c6:	89 c2                	mov    %eax,%edx
  1012c8:	c1 e2 04             	shl    $0x4,%edx
  1012cb:	01 d0                	add    %edx,%eax
  1012cd:	c1 e0 02             	shl    $0x2,%eax
  1012d0:	01 c8                	add    %ecx,%eax
  1012d2:	05 58 40 00 00       	add    $0x4058,%eax
  1012d7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  1012dd:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1012e3:	8b 10                	mov    (%eax),%edx
  1012e5:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1012eb:	89 d0                	mov    %edx,%eax
  1012ed:	01 c0                	add    %eax,%eax
  1012ef:	01 d0                	add    %edx,%eax
  1012f1:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1012f8:	01 d0                	add    %edx,%eax
  1012fa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101301:	01 d0                	add    %edx,%eax
  101303:	89 c2                	mov    %eax,%edx
  101305:	c1 e2 04             	shl    $0x4,%edx
  101308:	01 d0                	add    %edx,%eax
  10130a:	c1 e0 02             	shl    $0x2,%eax
  10130d:	01 c8                	add    %ecx,%eax
  10130f:	05 4c 40 00 00       	add    $0x404c,%eax
  101314:	8b 00                	mov    (%eax),%eax
  101316:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101319:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10131f:	8b 10                	mov    (%eax),%edx
  101321:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101327:	8b 08                	mov    (%eax),%ecx
  101329:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10132f:	89 d0                	mov    %edx,%eax
  101331:	01 c0                	add    %eax,%eax
  101333:	01 d0                	add    %edx,%eax
  101335:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10133c:	01 d0                	add    %edx,%eax
  10133e:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101345:	01 d0                	add    %edx,%eax
  101347:	89 c2                	mov    %eax,%edx
  101349:	c1 e2 04             	shl    $0x4,%edx
  10134c:	01 d0                	add    %edx,%eax
  10134e:	c1 e0 02             	shl    $0x2,%eax
  101351:	01 f0                	add    %esi,%eax
  101353:	05 50 40 00 00       	add    $0x4050,%eax
  101358:	8b 10                	mov    (%eax),%edx
  10135a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101360:	89 c8                	mov    %ecx,%eax
  101362:	01 c0                	add    %eax,%eax
  101364:	01 c8                	add    %ecx,%eax
  101366:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10136d:	01 c8                	add    %ecx,%eax
  10136f:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101376:	01 c8                	add    %ecx,%eax
  101378:	89 c1                	mov    %eax,%ecx
  10137a:	c1 e1 04             	shl    $0x4,%ecx
  10137d:	01 c8                	add    %ecx,%eax
  10137f:	c1 e0 02             	shl    $0x2,%eax
  101382:	01 f0                	add    %esi,%eax
  101384:	05 4c 40 00 00       	add    $0x404c,%eax
  101389:	89 10                	mov    %edx,(%eax)
  10138b:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101391:	8b 10                	mov    (%eax),%edx
  101393:	89 d0                	mov    %edx,%eax
  101395:	01 c0                	add    %eax,%eax
  101397:	01 d0                	add    %edx,%eax
  101399:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013a0:	01 d0                	add    %edx,%eax
  1013a2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1013a9:	01 d0                	add    %edx,%eax
  1013ab:	89 c2                	mov    %eax,%edx
  1013ad:	c1 e2 04             	shl    $0x4,%edx
  1013b0:	01 d0                	add    %edx,%eax
  1013b2:	c1 e0 02             	shl    $0x2,%eax
  1013b5:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  1013bb:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1013c1:	01 d0                	add    %edx,%eax
  1013c3:	83 c0 0c             	add    $0xc,%eax
  1013c6:	89 c2                	mov    %eax,%edx
  1013c8:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1013ce:	89 50 04             	mov    %edx,0x4(%eax)
  1013d1:	8b 65 f0             	mov    -0x10(%ebp),%esp
  1013d4:	0f a9                	pop    %gs
  1013d6:	0f a1                	pop    %fs
  1013d8:	07                   	pop    %es
  1013d9:	1f                   	pop    %ds
  1013da:	61                   	popa   
  1013db:	83 c4 08             	add    $0x8,%esp
  1013de:	cf                   	iret   
  1013df:	90                   	nop
  1013e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1013e3:	5b                   	pop    %ebx
  1013e4:	5e                   	pop    %esi
  1013e5:	5d                   	pop    %ebp
  1013e6:	c3                   	ret    

001013e7 <keyboardHandle>:
  1013e7:	55                   	push   %ebp
  1013e8:	89 e5                	mov    %esp,%ebp
  1013ea:	53                   	push   %ebx
  1013eb:	83 ec 14             	sub    $0x14,%esp
  1013ee:	e8 42 f4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1013f3:	81 c3 0d 4c 00 00    	add    $0x4c0d,%ebx
  1013f9:	e8 2d 18 00 00       	call   102c2b <getKeyCode>
  1013fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101401:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  101405:	75 12                	jne    101419 <keyboardHandle+0x32>
  101407:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10140d:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  101414:	e9 a2 00 00 00       	jmp    1014bb <keyboardHandle+0xd4>
  101419:	83 ec 0c             	sub    $0xc,%esp
  10141c:	ff 75 f4             	pushl  -0xc(%ebp)
  10141f:	e8 ab 18 00 00       	call   102ccf <getChar>
  101424:	83 c4 10             	add    $0x10,%esp
  101427:	88 c1                	mov    %al,%cl
  101429:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10142f:	8b 10                	mov    (%eax),%edx
  101431:	0f be c9             	movsbl %cl,%ecx
  101434:	c7 c0 60 7a 10 00    	mov    $0x107a60,%eax
  10143a:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10143d:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  101443:	8b 00                	mov    (%eax),%eax
  101445:	40                   	inc    %eax
  101446:	25 ff 00 00 80       	and    $0x800000ff,%eax
  10144b:	85 c0                	test   %eax,%eax
  10144d:	79 07                	jns    101456 <keyboardHandle+0x6f>
  10144f:	48                   	dec    %eax
  101450:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  101455:	40                   	inc    %eax
  101456:	89 c2                	mov    %eax,%edx
  101458:	c7 c0 40 7a 10 00    	mov    $0x107a40,%eax
  10145e:	89 10                	mov    %edx,(%eax)
  101460:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101466:	8b 40 1c             	mov    0x1c(%eax),%eax
  101469:	2d 84 40 00 00       	sub    $0x4084,%eax
  10146e:	89 83 28 01 00 00    	mov    %eax,0x128(%ebx)
  101474:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10147a:	8b 40 1c             	mov    0x1c(%eax),%eax
  10147d:	8b 50 04             	mov    0x4(%eax),%edx
  101480:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101486:	89 50 1c             	mov    %edx,0x1c(%eax)
  101489:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10148f:	8b 40 1c             	mov    0x1c(%eax),%eax
  101492:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101498:	8d 52 18             	lea    0x18(%edx),%edx
  10149b:	89 10                	mov    %edx,(%eax)
  10149d:	8b 83 28 01 00 00    	mov    0x128(%ebx),%eax
  1014a3:	c7 80 54 40 00 00 00 	movl   $0x0,0x4054(%eax)
  1014aa:	00 00 00 
  1014ad:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1014b3:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
  1014ba:	90                   	nop
  1014bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1014be:	c9                   	leave  
  1014bf:	c3                   	ret    

001014c0 <syscallWrite>:
  1014c0:	55                   	push   %ebp
  1014c1:	89 e5                	mov    %esp,%ebp
  1014c3:	83 ec 08             	sub    $0x8,%esp
  1014c6:	e8 7a ef ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1014cb:	05 35 4b 00 00       	add    $0x4b35,%eax
  1014d0:	8b 55 08             	mov    0x8(%ebp),%edx
  1014d3:	8b 52 28             	mov    0x28(%edx),%edx
  1014d6:	85 d2                	test   %edx,%edx
  1014d8:	74 07                	je     1014e1 <syscallWrite+0x21>
  1014da:	83 fa 03             	cmp    $0x3,%edx
  1014dd:	74 1f                	je     1014fe <syscallWrite+0x3e>
  1014df:	eb 3f                	jmp    101520 <syscallWrite+0x60>
  1014e1:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1014e7:	8b 00                	mov    (%eax),%eax
  1014e9:	83 f8 01             	cmp    $0x1,%eax
  1014ec:	75 2e                	jne    10151c <syscallWrite+0x5c>
  1014ee:	83 ec 0c             	sub    $0xc,%esp
  1014f1:	ff 75 08             	pushl  0x8(%ebp)
  1014f4:	e8 2a 00 00 00       	call   101523 <syscallWriteStdOut>
  1014f9:	83 c4 10             	add    $0x10,%esp
  1014fc:	eb 1e                	jmp    10151c <syscallWrite+0x5c>
  1014fe:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101504:	8b 40 30             	mov    0x30(%eax),%eax
  101507:	83 f8 01             	cmp    $0x1,%eax
  10150a:	75 13                	jne    10151f <syscallWrite+0x5f>
  10150c:	83 ec 0c             	sub    $0xc,%esp
  10150f:	ff 75 08             	pushl  0x8(%ebp)
  101512:	e8 9f 01 00 00       	call   1016b6 <syscallWriteShMem>
  101517:	83 c4 10             	add    $0x10,%esp
  10151a:	eb 03                	jmp    10151f <syscallWrite+0x5f>
  10151c:	90                   	nop
  10151d:	eb 01                	jmp    101520 <syscallWrite+0x60>
  10151f:	90                   	nop
  101520:	90                   	nop
  101521:	c9                   	leave  
  101522:	c3                   	ret    

00101523 <syscallWriteStdOut>:
  101523:	55                   	push   %ebp
  101524:	89 e5                	mov    %esp,%ebp
  101526:	53                   	push   %ebx
  101527:	83 ec 24             	sub    $0x24,%esp
  10152a:	e8 06 f3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10152f:	81 c3 d1 4a 00 00    	add    $0x4ad1,%ebx
  101535:	8b 45 08             	mov    0x8(%ebp),%eax
  101538:	8b 40 0c             	mov    0xc(%eax),%eax
  10153b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10153e:	8b 45 08             	mov    0x8(%ebp),%eax
  101541:	8b 40 24             	mov    0x24(%eax),%eax
  101544:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101547:	8b 45 08             	mov    0x8(%ebp),%eax
  10154a:	8b 40 20             	mov    0x20(%eax),%eax
  10154d:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101550:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101557:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  10155e:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  101562:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  101568:	8e 45 e0             	mov    -0x20(%ebp),%es
  10156b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101572:	e9 10 01 00 00       	jmp    101687 <syscallWriteStdOut+0x164>
  101577:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10157a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10157d:	01 d0                	add    %edx,%eax
  10157f:	26 8a 00             	mov    %es:(%eax),%al
  101582:	88 45 e7             	mov    %al,-0x19(%ebp)
  101585:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  101589:	75 52                	jne    1015dd <syscallWriteStdOut+0xba>
  10158b:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101591:	8b 00                	mov    (%eax),%eax
  101593:	8d 50 01             	lea    0x1(%eax),%edx
  101596:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10159c:	89 10                	mov    %edx,(%eax)
  10159e:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1015a4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015aa:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015b0:	8b 00                	mov    (%eax),%eax
  1015b2:	83 f8 19             	cmp    $0x19,%eax
  1015b5:	0f 85 c9 00 00 00    	jne    101684 <syscallWriteStdOut+0x161>
  1015bb:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015c1:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1015c7:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  1015cd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1015d3:	e8 96 27 00 00       	call   103d6e <scrollScreen>
  1015d8:	e9 a7 00 00 00       	jmp    101684 <syscallWriteStdOut+0x161>
  1015dd:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  1015e2:	80 cc 0c             	or     $0xc,%ah
  1015e5:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  1015e9:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1015ef:	8b 10                	mov    (%eax),%edx
  1015f1:	89 d0                	mov    %edx,%eax
  1015f3:	c1 e0 02             	shl    $0x2,%eax
  1015f6:	01 d0                	add    %edx,%eax
  1015f8:	c1 e0 04             	shl    $0x4,%eax
  1015fb:	89 c2                	mov    %eax,%edx
  1015fd:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101603:	8b 00                	mov    (%eax),%eax
  101605:	01 d0                	add    %edx,%eax
  101607:	01 c0                	add    %eax,%eax
  101609:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10160c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10160f:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  101615:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101618:	66 89 02             	mov    %ax,(%edx)
  10161b:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101621:	8b 00                	mov    (%eax),%eax
  101623:	8d 50 01             	lea    0x1(%eax),%edx
  101626:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  10162c:	89 10                	mov    %edx,(%eax)
  10162e:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101634:	8b 00                	mov    (%eax),%eax
  101636:	83 f8 50             	cmp    $0x50,%eax
  101639:	75 49                	jne    101684 <syscallWriteStdOut+0x161>
  10163b:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101641:	8b 00                	mov    (%eax),%eax
  101643:	8d 50 01             	lea    0x1(%eax),%edx
  101646:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10164c:	89 10                	mov    %edx,(%eax)
  10164e:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101654:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10165a:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  101660:	8b 00                	mov    (%eax),%eax
  101662:	83 f8 19             	cmp    $0x19,%eax
  101665:	75 1d                	jne    101684 <syscallWriteStdOut+0x161>
  101667:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  10166d:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101673:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101679:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10167f:	e8 ea 26 00 00       	call   103d6e <scrollScreen>
  101684:	ff 45 f4             	incl   -0xc(%ebp)
  101687:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10168a:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10168d:	0f 8c e4 fe ff ff    	jl     101577 <syscallWriteStdOut+0x54>
  101693:	c7 c0 10 62 10 00    	mov    $0x106210,%eax
  101699:	8b 10                	mov    (%eax),%edx
  10169b:	c7 c0 0c 62 10 00    	mov    $0x10620c,%eax
  1016a1:	8b 00                	mov    (%eax),%eax
  1016a3:	83 ec 08             	sub    $0x8,%esp
  1016a6:	52                   	push   %edx
  1016a7:	50                   	push   %eax
  1016a8:	e8 4e 26 00 00       	call   103cfb <updateCursor>
  1016ad:	83 c4 10             	add    $0x10,%esp
  1016b0:	90                   	nop
  1016b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1016b4:	c9                   	leave  
  1016b5:	c3                   	ret    

001016b6 <syscallWriteShMem>:
  1016b6:	55                   	push   %ebp
  1016b7:	89 e5                	mov    %esp,%ebp
  1016b9:	e8 87 ed ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1016be:	05 42 49 00 00       	add    $0x4942,%eax
  1016c3:	90                   	nop
  1016c4:	5d                   	pop    %ebp
  1016c5:	c3                   	ret    

001016c6 <syscallRead>:
  1016c6:	55                   	push   %ebp
  1016c7:	89 e5                	mov    %esp,%ebp
  1016c9:	83 ec 08             	sub    $0x8,%esp
  1016cc:	e8 74 ed ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1016d1:	05 2f 49 00 00       	add    $0x492f,%eax
  1016d6:	8b 55 08             	mov    0x8(%ebp),%edx
  1016d9:	8b 52 28             	mov    0x28(%edx),%edx
  1016dc:	83 fa 01             	cmp    $0x1,%edx
  1016df:	74 07                	je     1016e8 <syscallRead+0x22>
  1016e1:	83 fa 03             	cmp    $0x3,%edx
  1016e4:	74 20                	je     101706 <syscallRead+0x40>
  1016e6:	eb 40                	jmp    101728 <syscallRead+0x62>
  1016e8:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  1016ee:	8b 40 10             	mov    0x10(%eax),%eax
  1016f1:	83 f8 01             	cmp    $0x1,%eax
  1016f4:	75 2e                	jne    101724 <syscallRead+0x5e>
  1016f6:	83 ec 0c             	sub    $0xc,%esp
  1016f9:	ff 75 08             	pushl  0x8(%ebp)
  1016fc:	e8 2a 00 00 00       	call   10172b <syscallReadStdIn>
  101701:	83 c4 10             	add    $0x10,%esp
  101704:	eb 1e                	jmp    101724 <syscallRead+0x5e>
  101706:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  10170c:	8b 40 30             	mov    0x30(%eax),%eax
  10170f:	83 f8 01             	cmp    $0x1,%eax
  101712:	75 13                	jne    101727 <syscallRead+0x61>
  101714:	83 ec 0c             	sub    $0xc,%esp
  101717:	ff 75 08             	pushl  0x8(%ebp)
  10171a:	e8 1a 03 00 00       	call   101a39 <syscallReadShMem>
  10171f:	83 c4 10             	add    $0x10,%esp
  101722:	eb 03                	jmp    101727 <syscallRead+0x61>
  101724:	90                   	nop
  101725:	eb 01                	jmp    101728 <syscallRead+0x62>
  101727:	90                   	nop
  101728:	90                   	nop
  101729:	c9                   	leave  
  10172a:	c3                   	ret    

0010172b <syscallReadStdIn>:
  10172b:	55                   	push   %ebp
  10172c:	89 e5                	mov    %esp,%ebp
  10172e:	56                   	push   %esi
  10172f:	53                   	push   %ebx
  101730:	83 ec 10             	sub    $0x10,%esp
  101733:	e8 0d ed ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101738:	05 c8 48 00 00       	add    $0x48c8,%eax
  10173d:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101743:	8b 52 14             	mov    0x14(%edx),%edx
  101746:	85 d2                	test   %edx,%edx
  101748:	0f 85 21 02 00 00    	jne    10196f <syscallReadStdIn+0x244>
  10174e:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101754:	8b 52 10             	mov    0x10(%edx),%edx
  101757:	85 d2                	test   %edx,%edx
  101759:	75 42                	jne    10179d <syscallReadStdIn+0x72>
  10175b:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101761:	8b 12                	mov    (%edx),%edx
  101763:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101769:	89 d0                	mov    %edx,%eax
  10176b:	01 c0                	add    %eax,%eax
  10176d:	01 d0                	add    %edx,%eax
  10176f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101776:	01 d0                	add    %edx,%eax
  101778:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10177f:	01 d0                	add    %edx,%eax
  101781:	89 c2                	mov    %eax,%edx
  101783:	c1 e2 04             	shl    $0x4,%edx
  101786:	01 d0                	add    %edx,%eax
  101788:	c1 e0 02             	shl    $0x2,%eax
  10178b:	01 c8                	add    %ecx,%eax
  10178d:	05 2c 40 00 00       	add    $0x402c,%eax
  101792:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101798:	e9 95 02 00 00       	jmp    101a32 <syscallReadStdIn+0x307>
  10179d:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1017a3:	8b 0a                	mov    (%edx),%ecx
  1017a5:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1017ab:	89 ca                	mov    %ecx,%edx
  1017ad:	01 d2                	add    %edx,%edx
  1017af:	01 ca                	add    %ecx,%edx
  1017b1:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1017b8:	01 ca                	add    %ecx,%edx
  1017ba:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1017c1:	01 ca                	add    %ecx,%edx
  1017c3:	89 d1                	mov    %edx,%ecx
  1017c5:	c1 e1 04             	shl    $0x4,%ecx
  1017c8:	01 ca                	add    %ecx,%edx
  1017ca:	c1 e2 02             	shl    $0x2,%edx
  1017cd:	01 da                	add    %ebx,%edx
  1017cf:	81 c2 54 40 00 00    	add    $0x4054,%edx
  1017d5:	c7 02 02 00 00 00    	movl   $0x2,(%edx)
  1017db:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1017e1:	8b 0a                	mov    (%edx),%ecx
  1017e3:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1017e9:	89 ca                	mov    %ecx,%edx
  1017eb:	01 d2                	add    %edx,%edx
  1017ed:	01 ca                	add    %ecx,%edx
  1017ef:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1017f6:	01 ca                	add    %ecx,%edx
  1017f8:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1017ff:	01 ca                	add    %ecx,%edx
  101801:	89 d1                	mov    %edx,%ecx
  101803:	c1 e1 04             	shl    $0x4,%ecx
  101806:	01 ca                	add    %ecx,%edx
  101808:	c1 e2 02             	shl    $0x2,%edx
  10180b:	01 da                	add    %ebx,%edx
  10180d:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  101813:	c7 02 ff ff ff ff    	movl   $0xffffffff,(%edx)
  101819:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  10181f:	8b 1a                	mov    (%edx),%ebx
  101821:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  101827:	8b 4a 18             	mov    0x18(%edx),%ecx
  10182a:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101830:	89 da                	mov    %ebx,%edx
  101832:	01 d2                	add    %edx,%edx
  101834:	01 da                	add    %ebx,%edx
  101836:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  10183d:	01 da                	add    %ebx,%edx
  10183f:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101846:	01 da                	add    %ebx,%edx
  101848:	89 d3                	mov    %edx,%ebx
  10184a:	c1 e3 04             	shl    $0x4,%ebx
  10184d:	01 da                	add    %ebx,%edx
  10184f:	c1 e2 02             	shl    $0x2,%edx
  101852:	01 f2                	add    %esi,%edx
  101854:	81 c2 84 40 00 00    	add    $0x4084,%edx
  10185a:	89 0a                	mov    %ecx,(%edx)
  10185c:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  101862:	8b 0a                	mov    (%edx),%ecx
  101864:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  10186a:	89 ca                	mov    %ecx,%edx
  10186c:	01 d2                	add    %edx,%edx
  10186e:	01 ca                	add    %ecx,%edx
  101870:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101877:	01 ca                	add    %ecx,%edx
  101879:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101880:	01 ca                	add    %ecx,%edx
  101882:	89 d1                	mov    %edx,%ecx
  101884:	c1 e1 04             	shl    $0x4,%ecx
  101887:	01 ca                	add    %ecx,%edx
  101889:	c1 e2 02             	shl    $0x2,%edx
  10188c:	01 da                	add    %ebx,%edx
  10188e:	8d 8a 88 40 00 00    	lea    0x4088(%edx),%ecx
  101894:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  10189a:	8d 52 18             	lea    0x18(%edx),%edx
  10189d:	89 11                	mov    %edx,(%ecx)
  10189f:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018a5:	8b 0a                	mov    (%edx),%ecx
  1018a7:	89 ca                	mov    %ecx,%edx
  1018a9:	01 d2                	add    %edx,%edx
  1018ab:	01 ca                	add    %ecx,%edx
  1018ad:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1018b4:	01 ca                	add    %ecx,%edx
  1018b6:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  1018bd:	01 ca                	add    %ecx,%edx
  1018bf:	89 d1                	mov    %edx,%ecx
  1018c1:	c1 e1 04             	shl    $0x4,%ecx
  1018c4:	01 ca                	add    %ecx,%edx
  1018c6:	c1 e2 02             	shl    $0x2,%edx
  1018c9:	8d 8a 80 40 00 00    	lea    0x4080(%edx),%ecx
  1018cf:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  1018d5:	01 ca                	add    %ecx,%edx
  1018d7:	8d 4a 04             	lea    0x4(%edx),%ecx
  1018da:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1018e0:	89 4a 18             	mov    %ecx,0x18(%edx)
  1018e3:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018e9:	8b 1a                	mov    (%edx),%ebx
  1018eb:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  1018f1:	8b 0a                	mov    (%edx),%ecx
  1018f3:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1018f9:	89 ca                	mov    %ecx,%edx
  1018fb:	01 d2                	add    %edx,%edx
  1018fd:	01 ca                	add    %ecx,%edx
  1018ff:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  101906:	01 ca                	add    %ecx,%edx
  101908:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
  10190f:	01 ca                	add    %ecx,%edx
  101911:	89 d1                	mov    %edx,%ecx
  101913:	c1 e1 04             	shl    $0x4,%ecx
  101916:	01 ca                	add    %ecx,%edx
  101918:	c1 e2 02             	shl    $0x2,%edx
  10191b:	01 f2                	add    %esi,%edx
  10191d:	81 c2 84 40 00 00    	add    $0x4084,%edx
  101923:	8b 0a                	mov    (%edx),%ecx
  101925:	89 da                	mov    %ebx,%edx
  101927:	01 d2                	add    %edx,%edx
  101929:	01 da                	add    %ebx,%edx
  10192b:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  101932:	01 da                	add    %ebx,%edx
  101934:	8d 1c d5 00 00 00 00 	lea    0x0(,%edx,8),%ebx
  10193b:	01 da                	add    %ebx,%edx
  10193d:	89 d3                	mov    %edx,%ebx
  10193f:	c1 e3 04             	shl    $0x4,%ebx
  101942:	01 da                	add    %ebx,%edx
  101944:	c1 e2 02             	shl    $0x2,%edx
  101947:	8d 9a 80 40 00 00    	lea    0x4080(%edx),%ebx
  10194d:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  101953:	01 da                	add    %ebx,%edx
  101955:	83 c2 04             	add    $0x4,%edx
  101958:	89 51 04             	mov    %edx,0x4(%ecx)
  10195b:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101961:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
  101968:	cd 20                	int    $0x20
  10196a:	e9 c3 00 00 00       	jmp    101a32 <syscallReadStdIn+0x307>
  10196f:	8b 55 08             	mov    0x8(%ebp),%edx
  101972:	8b 52 0c             	mov    0xc(%edx),%edx
  101975:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101978:	8b 55 08             	mov    0x8(%ebp),%edx
  10197b:	8b 52 24             	mov    0x24(%edx),%edx
  10197e:	89 55 f0             	mov    %edx,-0x10(%ebp)
  101981:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101988:	eb 3b                	jmp    1019c5 <syscallReadStdIn+0x29a>
  10198a:	8e 45 ec             	mov    -0x14(%ebp),%es
  10198d:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  101993:	8b 0a                	mov    (%edx),%ecx
  101995:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101998:	01 ca                	add    %ecx,%edx
  10199a:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  1019a0:	85 d2                	test   %edx,%edx
  1019a2:	79 08                	jns    1019ac <syscallReadStdIn+0x281>
  1019a4:	4a                   	dec    %edx
  1019a5:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  1019ab:	42                   	inc    %edx
  1019ac:	89 d1                	mov    %edx,%ecx
  1019ae:	c7 c2 60 7a 10 00    	mov    $0x107a60,%edx
  1019b4:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
  1019b7:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  1019ba:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  1019bd:	01 d9                	add    %ebx,%ecx
  1019bf:	26 88 11             	mov    %dl,%es:(%ecx)
  1019c2:	ff 45 f4             	incl   -0xc(%ebp)
  1019c5:	8b 55 08             	mov    0x8(%ebp),%edx
  1019c8:	8b 4a 20             	mov    0x20(%edx),%ecx
  1019cb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1019ce:	39 d1                	cmp    %edx,%ecx
  1019d0:	76 2d                	jbe    1019ff <syscallReadStdIn+0x2d4>
  1019d2:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  1019d8:	8b 0a                	mov    (%edx),%ecx
  1019da:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1019dd:	01 ca                	add    %ecx,%edx
  1019df:	81 e2 ff 00 00 80    	and    $0x800000ff,%edx
  1019e5:	85 d2                	test   %edx,%edx
  1019e7:	79 08                	jns    1019f1 <syscallReadStdIn+0x2c6>
  1019e9:	4a                   	dec    %edx
  1019ea:	81 ca 00 ff ff ff    	or     $0xffffff00,%edx
  1019f0:	42                   	inc    %edx
  1019f1:	89 d1                	mov    %edx,%ecx
  1019f3:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  1019f9:	8b 12                	mov    (%edx),%edx
  1019fb:	39 d1                	cmp    %edx,%ecx
  1019fd:	75 8b                	jne    10198a <syscallReadStdIn+0x25f>
  1019ff:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  101a05:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101a0b:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  101a11:	8b 0a                	mov    (%edx),%ecx
  101a13:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  101a19:	89 0a                	mov    %ecx,(%edx)
  101a1b:	c7 c0 80 7e 10 00    	mov    $0x107e80,%eax
  101a21:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
  101a28:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101a2b:	8b 45 08             	mov    0x8(%ebp),%eax
  101a2e:	89 50 2c             	mov    %edx,0x2c(%eax)
  101a31:	90                   	nop
  101a32:	83 c4 10             	add    $0x10,%esp
  101a35:	5b                   	pop    %ebx
  101a36:	5e                   	pop    %esi
  101a37:	5d                   	pop    %ebp
  101a38:	c3                   	ret    

00101a39 <syscallReadShMem>:
  101a39:	55                   	push   %ebp
  101a3a:	89 e5                	mov    %esp,%ebp
  101a3c:	e8 04 ea ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101a41:	05 bf 45 00 00       	add    $0x45bf,%eax
  101a46:	90                   	nop
  101a47:	5d                   	pop    %ebp
  101a48:	c3                   	ret    

00101a49 <syscallFork>:
  101a49:	55                   	push   %ebp
  101a4a:	89 e5                	mov    %esp,%ebp
  101a4c:	56                   	push   %esi
  101a4d:	53                   	push   %ebx
  101a4e:	83 ec 10             	sub    $0x10,%esp
  101a51:	e8 df ed ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101a56:	81 c3 aa 45 00 00    	add    $0x45aa,%ebx
  101a5c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101a63:	eb 3c                	jmp    101aa1 <syscallFork+0x58>
  101a65:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101a6b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101a6e:	89 d0                	mov    %edx,%eax
  101a70:	01 c0                	add    %eax,%eax
  101a72:	01 d0                	add    %edx,%eax
  101a74:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101a7b:	01 d0                	add    %edx,%eax
  101a7d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101a84:	01 d0                	add    %edx,%eax
  101a86:	89 c2                	mov    %eax,%edx
  101a88:	c1 e2 04             	shl    $0x4,%edx
  101a8b:	01 d0                	add    %edx,%eax
  101a8d:	c1 e0 02             	shl    $0x2,%eax
  101a90:	01 c8                	add    %ecx,%eax
  101a92:	05 54 40 00 00       	add    $0x4054,%eax
  101a97:	8b 00                	mov    (%eax),%eax
  101a99:	83 f8 03             	cmp    $0x3,%eax
  101a9c:	74 0b                	je     101aa9 <syscallFork+0x60>
  101a9e:	ff 45 f4             	incl   -0xc(%ebp)
  101aa1:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  101aa5:	7e be                	jle    101a65 <syscallFork+0x1c>
  101aa7:	eb 01                	jmp    101aaa <syscallFork+0x61>
  101aa9:	90                   	nop
  101aaa:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  101aae:	0f 84 c5 0a 00 00    	je     102579 <syscallFork+0xb30>
  101ab4:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101aba:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101abd:	89 d0                	mov    %edx,%eax
  101abf:	01 c0                	add    %eax,%eax
  101ac1:	01 d0                	add    %edx,%eax
  101ac3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101aca:	01 d0                	add    %edx,%eax
  101acc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ad3:	01 d0                	add    %edx,%eax
  101ad5:	89 c2                	mov    %eax,%edx
  101ad7:	c1 e2 04             	shl    $0x4,%edx
  101ada:	01 d0                	add    %edx,%eax
  101adc:	c1 e0 02             	shl    $0x2,%eax
  101adf:	01 c8                	add    %ecx,%eax
  101ae1:	05 54 40 00 00       	add    $0x4054,%eax
  101ae6:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101aec:	e8 f0 f0 ff ff       	call   100be1 <enableInterrupt>
  101af1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101af8:	eb 28                	jmp    101b22 <syscallFork+0xd9>
  101afa:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101b00:	8b 00                	mov    (%eax),%eax
  101b02:	40                   	inc    %eax
  101b03:	c1 e0 14             	shl    $0x14,%eax
  101b06:	89 c2                	mov    %eax,%edx
  101b08:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101b0b:	01 d0                	add    %edx,%eax
  101b0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b10:	42                   	inc    %edx
  101b11:	89 d1                	mov    %edx,%ecx
  101b13:	c1 e1 14             	shl    $0x14,%ecx
  101b16:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101b19:	01 ca                	add    %ecx,%edx
  101b1b:	8a 00                	mov    (%eax),%al
  101b1d:	88 02                	mov    %al,(%edx)
  101b1f:	ff 45 f0             	incl   -0x10(%ebp)
  101b22:	81 7d f0 ff ff 0f 00 	cmpl   $0xfffff,-0x10(%ebp)
  101b29:	7e cf                	jle    101afa <syscallFork+0xb1>
  101b2b:	e8 c2 f0 ff ff       	call   100bf2 <disableInterrupt>
  101b30:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101b33:	89 d0                	mov    %edx,%eax
  101b35:	01 c0                	add    %eax,%eax
  101b37:	01 d0                	add    %edx,%eax
  101b39:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b40:	01 d0                	add    %edx,%eax
  101b42:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b49:	01 d0                	add    %edx,%eax
  101b4b:	89 c2                	mov    %eax,%edx
  101b4d:	c1 e2 04             	shl    $0x4,%edx
  101b50:	01 d0                	add    %edx,%eax
  101b52:	c1 e0 02             	shl    $0x2,%eax
  101b55:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101b5b:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101b61:	01 d0                	add    %edx,%eax
  101b63:	83 c0 0c             	add    $0xc,%eax
  101b66:	89 c6                	mov    %eax,%esi
  101b68:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101b6e:	8b 10                	mov    (%eax),%edx
  101b70:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101b76:	89 d0                	mov    %edx,%eax
  101b78:	01 c0                	add    %eax,%eax
  101b7a:	01 d0                	add    %edx,%eax
  101b7c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b83:	01 d0                	add    %edx,%eax
  101b85:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101b8c:	01 d0                	add    %edx,%eax
  101b8e:	89 c2                	mov    %eax,%edx
  101b90:	c1 e2 04             	shl    $0x4,%edx
  101b93:	01 d0                	add    %edx,%eax
  101b95:	c1 e0 02             	shl    $0x2,%eax
  101b98:	01 c8                	add    %ecx,%eax
  101b9a:	05 4c 40 00 00       	add    $0x404c,%eax
  101b9f:	8b 08                	mov    (%eax),%ecx
  101ba1:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101ba7:	8b 10                	mov    (%eax),%edx
  101ba9:	89 d0                	mov    %edx,%eax
  101bab:	01 c0                	add    %eax,%eax
  101bad:	01 d0                	add    %edx,%eax
  101baf:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bb6:	01 d0                	add    %edx,%eax
  101bb8:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bbf:	01 d0                	add    %edx,%eax
  101bc1:	89 c2                	mov    %eax,%edx
  101bc3:	c1 e2 04             	shl    $0x4,%edx
  101bc6:	01 d0                	add    %edx,%eax
  101bc8:	c1 e0 02             	shl    $0x2,%eax
  101bcb:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101bd1:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101bd7:	01 d0                	add    %edx,%eax
  101bd9:	83 c0 0c             	add    $0xc,%eax
  101bdc:	29 c1                	sub    %eax,%ecx
  101bde:	89 c8                	mov    %ecx,%eax
  101be0:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101be3:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101be9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101bec:	89 d0                	mov    %edx,%eax
  101bee:	01 c0                	add    %eax,%eax
  101bf0:	01 d0                	add    %edx,%eax
  101bf2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101bf9:	01 d0                	add    %edx,%eax
  101bfb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c02:	01 d0                	add    %edx,%eax
  101c04:	89 c2                	mov    %eax,%edx
  101c06:	c1 e2 04             	shl    $0x4,%edx
  101c09:	01 d0                	add    %edx,%eax
  101c0b:	c1 e0 02             	shl    $0x2,%eax
  101c0e:	01 f0                	add    %esi,%eax
  101c10:	05 4c 40 00 00       	add    $0x404c,%eax
  101c15:	89 08                	mov    %ecx,(%eax)
  101c17:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101c1a:	89 d0                	mov    %edx,%eax
  101c1c:	01 c0                	add    %eax,%eax
  101c1e:	01 d0                	add    %edx,%eax
  101c20:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c27:	01 d0                	add    %edx,%eax
  101c29:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c30:	01 d0                	add    %edx,%eax
  101c32:	89 c2                	mov    %eax,%edx
  101c34:	c1 e2 04             	shl    $0x4,%edx
  101c37:	01 d0                	add    %edx,%eax
  101c39:	c1 e0 02             	shl    $0x2,%eax
  101c3c:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101c42:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101c48:	01 d0                	add    %edx,%eax
  101c4a:	83 c0 0c             	add    $0xc,%eax
  101c4d:	89 c6                	mov    %eax,%esi
  101c4f:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101c55:	8b 10                	mov    (%eax),%edx
  101c57:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101c5d:	89 d0                	mov    %edx,%eax
  101c5f:	01 c0                	add    %eax,%eax
  101c61:	01 d0                	add    %edx,%eax
  101c63:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c6a:	01 d0                	add    %edx,%eax
  101c6c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c73:	01 d0                	add    %edx,%eax
  101c75:	89 c2                	mov    %eax,%edx
  101c77:	c1 e2 04             	shl    $0x4,%edx
  101c7a:	01 d0                	add    %edx,%eax
  101c7c:	c1 e0 02             	shl    $0x2,%eax
  101c7f:	01 c8                	add    %ecx,%eax
  101c81:	05 50 40 00 00       	add    $0x4050,%eax
  101c86:	8b 08                	mov    (%eax),%ecx
  101c88:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101c8e:	8b 10                	mov    (%eax),%edx
  101c90:	89 d0                	mov    %edx,%eax
  101c92:	01 c0                	add    %eax,%eax
  101c94:	01 d0                	add    %edx,%eax
  101c96:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101c9d:	01 d0                	add    %edx,%eax
  101c9f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ca6:	01 d0                	add    %edx,%eax
  101ca8:	89 c2                	mov    %eax,%edx
  101caa:	c1 e2 04             	shl    $0x4,%edx
  101cad:	01 d0                	add    %edx,%eax
  101caf:	c1 e0 02             	shl    $0x2,%eax
  101cb2:	8d 90 40 40 00 00    	lea    0x4040(%eax),%edx
  101cb8:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  101cbe:	01 d0                	add    %edx,%eax
  101cc0:	83 c0 0c             	add    $0xc,%eax
  101cc3:	29 c1                	sub    %eax,%ecx
  101cc5:	89 c8                	mov    %ecx,%eax
  101cc7:	8d 0c 06             	lea    (%esi,%eax,1),%ecx
  101cca:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101cd0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101cd3:	89 d0                	mov    %edx,%eax
  101cd5:	01 c0                	add    %eax,%eax
  101cd7:	01 d0                	add    %edx,%eax
  101cd9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ce0:	01 d0                	add    %edx,%eax
  101ce2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ce9:	01 d0                	add    %edx,%eax
  101ceb:	89 c2                	mov    %eax,%edx
  101ced:	c1 e2 04             	shl    $0x4,%edx
  101cf0:	01 d0                	add    %edx,%eax
  101cf2:	c1 e0 02             	shl    $0x2,%eax
  101cf5:	01 f0                	add    %esi,%eax
  101cf7:	05 50 40 00 00       	add    $0x4050,%eax
  101cfc:	89 08                	mov    %ecx,(%eax)
  101cfe:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101d04:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101d07:	89 d0                	mov    %edx,%eax
  101d09:	01 c0                	add    %eax,%eax
  101d0b:	01 d0                	add    %edx,%eax
  101d0d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d14:	01 d0                	add    %edx,%eax
  101d16:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d1d:	01 d0                	add    %edx,%eax
  101d1f:	89 c2                	mov    %eax,%edx
  101d21:	c1 e2 04             	shl    $0x4,%edx
  101d24:	01 d0                	add    %edx,%eax
  101d26:	c1 e0 02             	shl    $0x2,%eax
  101d29:	01 c8                	add    %ecx,%eax
  101d2b:	05 54 40 00 00       	add    $0x4054,%eax
  101d30:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101d36:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101d3c:	8b 10                	mov    (%eax),%edx
  101d3e:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101d44:	89 d0                	mov    %edx,%eax
  101d46:	01 c0                	add    %eax,%eax
  101d48:	01 d0                	add    %edx,%eax
  101d4a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d51:	01 d0                	add    %edx,%eax
  101d53:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101d5a:	01 d0                	add    %edx,%eax
  101d5c:	89 c2                	mov    %eax,%edx
  101d5e:	c1 e2 04             	shl    $0x4,%edx
  101d61:	01 d0                	add    %edx,%eax
  101d63:	c1 e0 02             	shl    $0x2,%eax
  101d66:	01 c8                	add    %ecx,%eax
  101d68:	05 58 40 00 00       	add    $0x4058,%eax
  101d6d:	8b 10                	mov    (%eax),%edx
  101d6f:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101d75:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101d78:	89 c8                	mov    %ecx,%eax
  101d7a:	01 c0                	add    %eax,%eax
  101d7c:	01 c8                	add    %ecx,%eax
  101d7e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101d85:	01 c8                	add    %ecx,%eax
  101d87:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101d8e:	01 c8                	add    %ecx,%eax
  101d90:	89 c1                	mov    %eax,%ecx
  101d92:	c1 e1 04             	shl    $0x4,%ecx
  101d95:	01 c8                	add    %ecx,%eax
  101d97:	c1 e0 02             	shl    $0x2,%eax
  101d9a:	01 f0                	add    %esi,%eax
  101d9c:	05 58 40 00 00       	add    $0x4058,%eax
  101da1:	89 10                	mov    %edx,(%eax)
  101da3:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101da9:	8b 10                	mov    (%eax),%edx
  101dab:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101db1:	89 d0                	mov    %edx,%eax
  101db3:	01 c0                	add    %eax,%eax
  101db5:	01 d0                	add    %edx,%eax
  101db7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dbe:	01 d0                	add    %edx,%eax
  101dc0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101dc7:	01 d0                	add    %edx,%eax
  101dc9:	89 c2                	mov    %eax,%edx
  101dcb:	c1 e2 04             	shl    $0x4,%edx
  101dce:	01 d0                	add    %edx,%eax
  101dd0:	c1 e0 02             	shl    $0x2,%eax
  101dd3:	01 c8                	add    %ecx,%eax
  101dd5:	05 5c 40 00 00       	add    $0x405c,%eax
  101dda:	8b 10                	mov    (%eax),%edx
  101ddc:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101de2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101de5:	89 c8                	mov    %ecx,%eax
  101de7:	01 c0                	add    %eax,%eax
  101de9:	01 c8                	add    %ecx,%eax
  101deb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101df2:	01 c8                	add    %ecx,%eax
  101df4:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101dfb:	01 c8                	add    %ecx,%eax
  101dfd:	89 c1                	mov    %eax,%ecx
  101dff:	c1 e1 04             	shl    $0x4,%ecx
  101e02:	01 c8                	add    %ecx,%eax
  101e04:	c1 e0 02             	shl    $0x2,%eax
  101e07:	01 f0                	add    %esi,%eax
  101e09:	05 5c 40 00 00       	add    $0x405c,%eax
  101e0e:	89 10                	mov    %edx,(%eax)
  101e10:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e13:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101e19:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101e1c:	89 c8                	mov    %ecx,%eax
  101e1e:	01 c0                	add    %eax,%eax
  101e20:	01 c8                	add    %ecx,%eax
  101e22:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e29:	01 c8                	add    %ecx,%eax
  101e2b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101e32:	01 c8                	add    %ecx,%eax
  101e34:	89 c1                	mov    %eax,%ecx
  101e36:	c1 e1 04             	shl    $0x4,%ecx
  101e39:	01 c8                	add    %ecx,%eax
  101e3b:	c1 e0 02             	shl    $0x2,%eax
  101e3e:	01 f0                	add    %esi,%eax
  101e40:	05 60 40 00 00       	add    $0x4060,%eax
  101e45:	89 10                	mov    %edx,(%eax)
  101e47:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101e4a:	40                   	inc    %eax
  101e4b:	01 c0                	add    %eax,%eax
  101e4d:	c1 e0 03             	shl    $0x3,%eax
  101e50:	83 c8 03             	or     $0x3,%eax
  101e53:	89 c1                	mov    %eax,%ecx
  101e55:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101e5b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e5e:	89 d0                	mov    %edx,%eax
  101e60:	01 c0                	add    %eax,%eax
  101e62:	01 d0                	add    %edx,%eax
  101e64:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e6b:	01 d0                	add    %edx,%eax
  101e6d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101e74:	01 d0                	add    %edx,%eax
  101e76:	89 c2                	mov    %eax,%edx
  101e78:	c1 e2 04             	shl    $0x4,%edx
  101e7b:	01 d0                	add    %edx,%eax
  101e7d:	c1 e0 02             	shl    $0x2,%eax
  101e80:	01 f0                	add    %esi,%eax
  101e82:	05 48 40 00 00       	add    $0x4048,%eax
  101e87:	89 08                	mov    %ecx,(%eax)
  101e89:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101e8f:	8b 10                	mov    (%eax),%edx
  101e91:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101e97:	89 d0                	mov    %edx,%eax
  101e99:	01 c0                	add    %eax,%eax
  101e9b:	01 d0                	add    %edx,%eax
  101e9d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ea4:	01 d0                	add    %edx,%eax
  101ea6:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101ead:	01 d0                	add    %edx,%eax
  101eaf:	89 c2                	mov    %eax,%edx
  101eb1:	c1 e2 04             	shl    $0x4,%edx
  101eb4:	01 d0                	add    %edx,%eax
  101eb6:	c1 e0 02             	shl    $0x2,%eax
  101eb9:	01 c8                	add    %ecx,%eax
  101ebb:	05 44 40 00 00       	add    $0x4044,%eax
  101ec0:	8b 10                	mov    (%eax),%edx
  101ec2:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101ec8:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101ecb:	89 c8                	mov    %ecx,%eax
  101ecd:	01 c0                	add    %eax,%eax
  101ecf:	01 c8                	add    %ecx,%eax
  101ed1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ed8:	01 c8                	add    %ecx,%eax
  101eda:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ee1:	01 c8                	add    %ecx,%eax
  101ee3:	89 c1                	mov    %eax,%ecx
  101ee5:	c1 e1 04             	shl    $0x4,%ecx
  101ee8:	01 c8                	add    %ecx,%eax
  101eea:	c1 e0 02             	shl    $0x2,%eax
  101eed:	01 f0                	add    %esi,%eax
  101eef:	05 44 40 00 00       	add    $0x4044,%eax
  101ef4:	89 10                	mov    %edx,(%eax)
  101ef6:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101efc:	8b 10                	mov    (%eax),%edx
  101efe:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101f04:	89 d0                	mov    %edx,%eax
  101f06:	01 c0                	add    %eax,%eax
  101f08:	01 d0                	add    %edx,%eax
  101f0a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f11:	01 d0                	add    %edx,%eax
  101f13:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f1a:	01 d0                	add    %edx,%eax
  101f1c:	89 c2                	mov    %eax,%edx
  101f1e:	c1 e2 04             	shl    $0x4,%edx
  101f21:	01 d0                	add    %edx,%eax
  101f23:	c1 e0 02             	shl    $0x2,%eax
  101f26:	01 c8                	add    %ecx,%eax
  101f28:	05 40 40 00 00       	add    $0x4040,%eax
  101f2d:	8b 10                	mov    (%eax),%edx
  101f2f:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101f35:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101f38:	89 c8                	mov    %ecx,%eax
  101f3a:	01 c0                	add    %eax,%eax
  101f3c:	01 c8                	add    %ecx,%eax
  101f3e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101f45:	01 c8                	add    %ecx,%eax
  101f47:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101f4e:	01 c8                	add    %ecx,%eax
  101f50:	89 c1                	mov    %eax,%ecx
  101f52:	c1 e1 04             	shl    $0x4,%ecx
  101f55:	01 c8                	add    %ecx,%eax
  101f57:	c1 e0 02             	shl    $0x2,%eax
  101f5a:	01 f0                	add    %esi,%eax
  101f5c:	05 40 40 00 00       	add    $0x4040,%eax
  101f61:	89 10                	mov    %edx,(%eax)
  101f63:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101f66:	01 c0                	add    %eax,%eax
  101f68:	40                   	inc    %eax
  101f69:	c1 e0 03             	shl    $0x3,%eax
  101f6c:	83 c8 03             	or     $0x3,%eax
  101f6f:	89 c1                	mov    %eax,%ecx
  101f71:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101f77:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f7a:	89 d0                	mov    %edx,%eax
  101f7c:	01 c0                	add    %eax,%eax
  101f7e:	01 d0                	add    %edx,%eax
  101f80:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f87:	01 d0                	add    %edx,%eax
  101f89:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101f90:	01 d0                	add    %edx,%eax
  101f92:	89 c2                	mov    %eax,%edx
  101f94:	c1 e2 04             	shl    $0x4,%edx
  101f97:	01 d0                	add    %edx,%eax
  101f99:	c1 e0 02             	shl    $0x2,%eax
  101f9c:	01 f0                	add    %esi,%eax
  101f9e:	05 3c 40 00 00       	add    $0x403c,%eax
  101fa3:	89 08                	mov    %ecx,(%eax)
  101fa5:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  101fab:	8b 10                	mov    (%eax),%edx
  101fad:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  101fb3:	89 d0                	mov    %edx,%eax
  101fb5:	01 c0                	add    %eax,%eax
  101fb7:	01 d0                	add    %edx,%eax
  101fb9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fc0:	01 d0                	add    %edx,%eax
  101fc2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  101fc9:	01 d0                	add    %edx,%eax
  101fcb:	89 c2                	mov    %eax,%edx
  101fcd:	c1 e2 04             	shl    $0x4,%edx
  101fd0:	01 d0                	add    %edx,%eax
  101fd2:	c1 e0 02             	shl    $0x2,%eax
  101fd5:	01 c8                	add    %ecx,%eax
  101fd7:	05 38 40 00 00       	add    $0x4038,%eax
  101fdc:	8b 10                	mov    (%eax),%edx
  101fde:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  101fe4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101fe7:	89 c8                	mov    %ecx,%eax
  101fe9:	01 c0                	add    %eax,%eax
  101feb:	01 c8                	add    %ecx,%eax
  101fed:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ff4:	01 c8                	add    %ecx,%eax
  101ff6:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  101ffd:	01 c8                	add    %ecx,%eax
  101fff:	89 c1                	mov    %eax,%ecx
  102001:	c1 e1 04             	shl    $0x4,%ecx
  102004:	01 c8                	add    %ecx,%eax
  102006:	c1 e0 02             	shl    $0x2,%eax
  102009:	01 f0                	add    %esi,%eax
  10200b:	05 38 40 00 00       	add    $0x4038,%eax
  102010:	89 10                	mov    %edx,(%eax)
  102012:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102018:	8b 10                	mov    (%eax),%edx
  10201a:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102020:	89 d0                	mov    %edx,%eax
  102022:	01 c0                	add    %eax,%eax
  102024:	01 d0                	add    %edx,%eax
  102026:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10202d:	01 d0                	add    %edx,%eax
  10202f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102036:	01 d0                	add    %edx,%eax
  102038:	89 c2                	mov    %eax,%edx
  10203a:	c1 e2 04             	shl    $0x4,%edx
  10203d:	01 d0                	add    %edx,%eax
  10203f:	c1 e0 02             	shl    $0x2,%eax
  102042:	01 c8                	add    %ecx,%eax
  102044:	05 2c 40 00 00       	add    $0x402c,%eax
  102049:	8b 10                	mov    (%eax),%edx
  10204b:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102051:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102054:	89 c8                	mov    %ecx,%eax
  102056:	01 c0                	add    %eax,%eax
  102058:	01 c8                	add    %ecx,%eax
  10205a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102061:	01 c8                	add    %ecx,%eax
  102063:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10206a:	01 c8                	add    %ecx,%eax
  10206c:	89 c1                	mov    %eax,%ecx
  10206e:	c1 e1 04             	shl    $0x4,%ecx
  102071:	01 c8                	add    %ecx,%eax
  102073:	c1 e0 02             	shl    $0x2,%eax
  102076:	01 f0                	add    %esi,%eax
  102078:	05 2c 40 00 00       	add    $0x402c,%eax
  10207d:	89 10                	mov    %edx,(%eax)
  10207f:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102085:	8b 10                	mov    (%eax),%edx
  102087:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10208d:	89 d0                	mov    %edx,%eax
  10208f:	01 c0                	add    %eax,%eax
  102091:	01 d0                	add    %edx,%eax
  102093:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10209a:	01 d0                	add    %edx,%eax
  10209c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1020a3:	01 d0                	add    %edx,%eax
  1020a5:	89 c2                	mov    %eax,%edx
  1020a7:	c1 e2 04             	shl    $0x4,%edx
  1020aa:	01 d0                	add    %edx,%eax
  1020ac:	c1 e0 02             	shl    $0x2,%eax
  1020af:	01 c8                	add    %ecx,%eax
  1020b1:	05 28 40 00 00       	add    $0x4028,%eax
  1020b6:	8b 10                	mov    (%eax),%edx
  1020b8:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1020be:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1020c1:	89 c8                	mov    %ecx,%eax
  1020c3:	01 c0                	add    %eax,%eax
  1020c5:	01 c8                	add    %ecx,%eax
  1020c7:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020ce:	01 c8                	add    %ecx,%eax
  1020d0:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1020d7:	01 c8                	add    %ecx,%eax
  1020d9:	89 c1                	mov    %eax,%ecx
  1020db:	c1 e1 04             	shl    $0x4,%ecx
  1020de:	01 c8                	add    %ecx,%eax
  1020e0:	c1 e0 02             	shl    $0x2,%eax
  1020e3:	01 f0                	add    %esi,%eax
  1020e5:	05 28 40 00 00       	add    $0x4028,%eax
  1020ea:	89 10                	mov    %edx,(%eax)
  1020ec:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1020f2:	8b 10                	mov    (%eax),%edx
  1020f4:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1020fa:	89 d0                	mov    %edx,%eax
  1020fc:	01 c0                	add    %eax,%eax
  1020fe:	01 d0                	add    %edx,%eax
  102100:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102107:	01 d0                	add    %edx,%eax
  102109:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102110:	01 d0                	add    %edx,%eax
  102112:	89 c2                	mov    %eax,%edx
  102114:	c1 e2 04             	shl    $0x4,%edx
  102117:	01 d0                	add    %edx,%eax
  102119:	c1 e0 02             	shl    $0x2,%eax
  10211c:	01 c8                	add    %ecx,%eax
  10211e:	05 24 40 00 00       	add    $0x4024,%eax
  102123:	8b 10                	mov    (%eax),%edx
  102125:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10212b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10212e:	89 c8                	mov    %ecx,%eax
  102130:	01 c0                	add    %eax,%eax
  102132:	01 c8                	add    %ecx,%eax
  102134:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10213b:	01 c8                	add    %ecx,%eax
  10213d:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102144:	01 c8                	add    %ecx,%eax
  102146:	89 c1                	mov    %eax,%ecx
  102148:	c1 e1 04             	shl    $0x4,%ecx
  10214b:	01 c8                	add    %ecx,%eax
  10214d:	c1 e0 02             	shl    $0x2,%eax
  102150:	01 f0                	add    %esi,%eax
  102152:	05 24 40 00 00       	add    $0x4024,%eax
  102157:	89 10                	mov    %edx,(%eax)
  102159:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10215f:	8b 10                	mov    (%eax),%edx
  102161:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102167:	89 d0                	mov    %edx,%eax
  102169:	01 c0                	add    %eax,%eax
  10216b:	01 d0                	add    %edx,%eax
  10216d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102174:	01 d0                	add    %edx,%eax
  102176:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10217d:	01 d0                	add    %edx,%eax
  10217f:	89 c2                	mov    %eax,%edx
  102181:	c1 e2 04             	shl    $0x4,%edx
  102184:	01 d0                	add    %edx,%eax
  102186:	c1 e0 02             	shl    $0x2,%eax
  102189:	01 c8                	add    %ecx,%eax
  10218b:	05 20 40 00 00       	add    $0x4020,%eax
  102190:	8b 10                	mov    (%eax),%edx
  102192:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102198:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10219b:	89 c8                	mov    %ecx,%eax
  10219d:	01 c0                	add    %eax,%eax
  10219f:	01 c8                	add    %ecx,%eax
  1021a1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021a8:	01 c8                	add    %ecx,%eax
  1021aa:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021b1:	01 c8                	add    %ecx,%eax
  1021b3:	89 c1                	mov    %eax,%ecx
  1021b5:	c1 e1 04             	shl    $0x4,%ecx
  1021b8:	01 c8                	add    %ecx,%eax
  1021ba:	c1 e0 02             	shl    $0x2,%eax
  1021bd:	01 f0                	add    %esi,%eax
  1021bf:	05 20 40 00 00       	add    $0x4020,%eax
  1021c4:	89 10                	mov    %edx,(%eax)
  1021c6:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1021cc:	8b 10                	mov    (%eax),%edx
  1021ce:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1021d4:	89 d0                	mov    %edx,%eax
  1021d6:	01 c0                	add    %eax,%eax
  1021d8:	01 d0                	add    %edx,%eax
  1021da:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021e1:	01 d0                	add    %edx,%eax
  1021e3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1021ea:	01 d0                	add    %edx,%eax
  1021ec:	89 c2                	mov    %eax,%edx
  1021ee:	c1 e2 04             	shl    $0x4,%edx
  1021f1:	01 d0                	add    %edx,%eax
  1021f3:	c1 e0 02             	shl    $0x2,%eax
  1021f6:	01 c8                	add    %ecx,%eax
  1021f8:	05 1c 40 00 00       	add    $0x401c,%eax
  1021fd:	8b 10                	mov    (%eax),%edx
  1021ff:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102205:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102208:	89 c8                	mov    %ecx,%eax
  10220a:	01 c0                	add    %eax,%eax
  10220c:	01 c8                	add    %ecx,%eax
  10220e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102215:	01 c8                	add    %ecx,%eax
  102217:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10221e:	01 c8                	add    %ecx,%eax
  102220:	89 c1                	mov    %eax,%ecx
  102222:	c1 e1 04             	shl    $0x4,%ecx
  102225:	01 c8                	add    %ecx,%eax
  102227:	c1 e0 02             	shl    $0x2,%eax
  10222a:	01 f0                	add    %esi,%eax
  10222c:	05 1c 40 00 00       	add    $0x401c,%eax
  102231:	89 10                	mov    %edx,(%eax)
  102233:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102239:	8b 10                	mov    (%eax),%edx
  10223b:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102241:	89 d0                	mov    %edx,%eax
  102243:	01 c0                	add    %eax,%eax
  102245:	01 d0                	add    %edx,%eax
  102247:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10224e:	01 d0                	add    %edx,%eax
  102250:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102257:	01 d0                	add    %edx,%eax
  102259:	89 c2                	mov    %eax,%edx
  10225b:	c1 e2 04             	shl    $0x4,%edx
  10225e:	01 d0                	add    %edx,%eax
  102260:	c1 e0 02             	shl    $0x2,%eax
  102263:	01 c8                	add    %ecx,%eax
  102265:	05 18 40 00 00       	add    $0x4018,%eax
  10226a:	8b 10                	mov    (%eax),%edx
  10226c:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102272:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102275:	89 c8                	mov    %ecx,%eax
  102277:	01 c0                	add    %eax,%eax
  102279:	01 c8                	add    %ecx,%eax
  10227b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102282:	01 c8                	add    %ecx,%eax
  102284:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10228b:	01 c8                	add    %ecx,%eax
  10228d:	89 c1                	mov    %eax,%ecx
  10228f:	c1 e1 04             	shl    $0x4,%ecx
  102292:	01 c8                	add    %ecx,%eax
  102294:	c1 e0 02             	shl    $0x2,%eax
  102297:	01 f0                	add    %esi,%eax
  102299:	05 18 40 00 00       	add    $0x4018,%eax
  10229e:	89 10                	mov    %edx,(%eax)
  1022a0:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1022a6:	8b 10                	mov    (%eax),%edx
  1022a8:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1022ae:	89 d0                	mov    %edx,%eax
  1022b0:	01 c0                	add    %eax,%eax
  1022b2:	01 d0                	add    %edx,%eax
  1022b4:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022bb:	01 d0                	add    %edx,%eax
  1022bd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1022c4:	01 d0                	add    %edx,%eax
  1022c6:	89 c2                	mov    %eax,%edx
  1022c8:	c1 e2 04             	shl    $0x4,%edx
  1022cb:	01 d0                	add    %edx,%eax
  1022cd:	c1 e0 02             	shl    $0x2,%eax
  1022d0:	01 c8                	add    %ecx,%eax
  1022d2:	05 14 40 00 00       	add    $0x4014,%eax
  1022d7:	8b 10                	mov    (%eax),%edx
  1022d9:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1022df:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1022e2:	89 c8                	mov    %ecx,%eax
  1022e4:	01 c0                	add    %eax,%eax
  1022e6:	01 c8                	add    %ecx,%eax
  1022e8:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022ef:	01 c8                	add    %ecx,%eax
  1022f1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1022f8:	01 c8                	add    %ecx,%eax
  1022fa:	89 c1                	mov    %eax,%ecx
  1022fc:	c1 e1 04             	shl    $0x4,%ecx
  1022ff:	01 c8                	add    %ecx,%eax
  102301:	c1 e0 02             	shl    $0x2,%eax
  102304:	01 f0                	add    %esi,%eax
  102306:	05 14 40 00 00       	add    $0x4014,%eax
  10230b:	89 10                	mov    %edx,(%eax)
  10230d:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102313:	8b 10                	mov    (%eax),%edx
  102315:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  10231b:	89 d0                	mov    %edx,%eax
  10231d:	01 c0                	add    %eax,%eax
  10231f:	01 d0                	add    %edx,%eax
  102321:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102328:	01 d0                	add    %edx,%eax
  10232a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102331:	01 d0                	add    %edx,%eax
  102333:	89 c2                	mov    %eax,%edx
  102335:	c1 e2 04             	shl    $0x4,%edx
  102338:	01 d0                	add    %edx,%eax
  10233a:	c1 e0 02             	shl    $0x2,%eax
  10233d:	01 c8                	add    %ecx,%eax
  10233f:	05 10 40 00 00       	add    $0x4010,%eax
  102344:	8b 10                	mov    (%eax),%edx
  102346:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10234c:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10234f:	89 c8                	mov    %ecx,%eax
  102351:	01 c0                	add    %eax,%eax
  102353:	01 c8                	add    %ecx,%eax
  102355:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10235c:	01 c8                	add    %ecx,%eax
  10235e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102365:	01 c8                	add    %ecx,%eax
  102367:	89 c1                	mov    %eax,%ecx
  102369:	c1 e1 04             	shl    $0x4,%ecx
  10236c:	01 c8                	add    %ecx,%eax
  10236e:	c1 e0 02             	shl    $0x2,%eax
  102371:	01 f0                	add    %esi,%eax
  102373:	05 10 40 00 00       	add    $0x4010,%eax
  102378:	89 10                	mov    %edx,(%eax)
  10237a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10237d:	40                   	inc    %eax
  10237e:	01 c0                	add    %eax,%eax
  102380:	c1 e0 03             	shl    $0x3,%eax
  102383:	83 c8 03             	or     $0x3,%eax
  102386:	89 c1                	mov    %eax,%ecx
  102388:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  10238e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102391:	89 d0                	mov    %edx,%eax
  102393:	01 c0                	add    %eax,%eax
  102395:	01 d0                	add    %edx,%eax
  102397:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10239e:	01 d0                	add    %edx,%eax
  1023a0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023a7:	01 d0                	add    %edx,%eax
  1023a9:	89 c2                	mov    %eax,%edx
  1023ab:	c1 e2 04             	shl    $0x4,%edx
  1023ae:	01 d0                	add    %edx,%eax
  1023b0:	c1 e0 02             	shl    $0x2,%eax
  1023b3:	01 f0                	add    %esi,%eax
  1023b5:	05 0c 40 00 00       	add    $0x400c,%eax
  1023ba:	89 08                	mov    %ecx,(%eax)
  1023bc:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1023c2:	8b 10                	mov    (%eax),%edx
  1023c4:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1023ca:	89 d0                	mov    %edx,%eax
  1023cc:	01 c0                	add    %eax,%eax
  1023ce:	01 d0                	add    %edx,%eax
  1023d0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023d7:	01 d0                	add    %edx,%eax
  1023d9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1023e0:	01 d0                	add    %edx,%eax
  1023e2:	89 c2                	mov    %eax,%edx
  1023e4:	c1 e2 04             	shl    $0x4,%edx
  1023e7:	01 d0                	add    %edx,%eax
  1023e9:	c1 e0 02             	shl    $0x2,%eax
  1023ec:	01 c8                	add    %ecx,%eax
  1023ee:	05 08 40 00 00       	add    $0x4008,%eax
  1023f3:	8b 10                	mov    (%eax),%edx
  1023f5:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1023fb:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1023fe:	89 c8                	mov    %ecx,%eax
  102400:	01 c0                	add    %eax,%eax
  102402:	01 c8                	add    %ecx,%eax
  102404:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10240b:	01 c8                	add    %ecx,%eax
  10240d:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102414:	01 c8                	add    %ecx,%eax
  102416:	89 c1                	mov    %eax,%ecx
  102418:	c1 e1 04             	shl    $0x4,%ecx
  10241b:	01 c8                	add    %ecx,%eax
  10241d:	c1 e0 02             	shl    $0x2,%eax
  102420:	01 f0                	add    %esi,%eax
  102422:	05 08 40 00 00       	add    $0x4008,%eax
  102427:	89 10                	mov    %edx,(%eax)
  102429:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10242f:	8b 10                	mov    (%eax),%edx
  102431:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102437:	89 d0                	mov    %edx,%eax
  102439:	01 c0                	add    %eax,%eax
  10243b:	01 d0                	add    %edx,%eax
  10243d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102444:	01 d0                	add    %edx,%eax
  102446:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10244d:	01 d0                	add    %edx,%eax
  10244f:	89 c2                	mov    %eax,%edx
  102451:	c1 e2 04             	shl    $0x4,%edx
  102454:	01 d0                	add    %edx,%eax
  102456:	c1 e0 02             	shl    $0x2,%eax
  102459:	01 c8                	add    %ecx,%eax
  10245b:	05 04 40 00 00       	add    $0x4004,%eax
  102460:	8b 10                	mov    (%eax),%edx
  102462:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  102468:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10246b:	89 c8                	mov    %ecx,%eax
  10246d:	01 c0                	add    %eax,%eax
  10246f:	01 c8                	add    %ecx,%eax
  102471:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102478:	01 c8                	add    %ecx,%eax
  10247a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102481:	01 c8                	add    %ecx,%eax
  102483:	89 c1                	mov    %eax,%ecx
  102485:	c1 e1 04             	shl    $0x4,%ecx
  102488:	01 c8                	add    %ecx,%eax
  10248a:	c1 e0 02             	shl    $0x2,%eax
  10248d:	01 f0                	add    %esi,%eax
  10248f:	05 04 40 00 00       	add    $0x4004,%eax
  102494:	89 10                	mov    %edx,(%eax)
  102496:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10249c:	8b 10                	mov    (%eax),%edx
  10249e:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1024a4:	89 d0                	mov    %edx,%eax
  1024a6:	01 c0                	add    %eax,%eax
  1024a8:	01 d0                	add    %edx,%eax
  1024aa:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024b1:	01 d0                	add    %edx,%eax
  1024b3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1024ba:	01 d0                	add    %edx,%eax
  1024bc:	89 c2                	mov    %eax,%edx
  1024be:	c1 e2 04             	shl    $0x4,%edx
  1024c1:	01 d0                	add    %edx,%eax
  1024c3:	c1 e0 02             	shl    $0x2,%eax
  1024c6:	01 c8                	add    %ecx,%eax
  1024c8:	05 00 40 00 00       	add    $0x4000,%eax
  1024cd:	8b 10                	mov    (%eax),%edx
  1024cf:	c7 c6 60 84 10 00    	mov    $0x108460,%esi
  1024d5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1024d8:	89 c8                	mov    %ecx,%eax
  1024da:	01 c0                	add    %eax,%eax
  1024dc:	01 c8                	add    %ecx,%eax
  1024de:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024e5:	01 c8                	add    %ecx,%eax
  1024e7:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1024ee:	01 c8                	add    %ecx,%eax
  1024f0:	89 c1                	mov    %eax,%ecx
  1024f2:	c1 e1 04             	shl    $0x4,%ecx
  1024f5:	01 c8                	add    %ecx,%eax
  1024f7:	c1 e0 02             	shl    $0x2,%eax
  1024fa:	01 f0                	add    %esi,%eax
  1024fc:	05 00 40 00 00       	add    $0x4000,%eax
  102501:	89 10                	mov    %edx,(%eax)
  102503:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102509:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10250c:	89 d0                	mov    %edx,%eax
  10250e:	01 c0                	add    %eax,%eax
  102510:	01 d0                	add    %edx,%eax
  102512:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102519:	01 d0                	add    %edx,%eax
  10251b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102522:	01 d0                	add    %edx,%eax
  102524:	89 c2                	mov    %eax,%edx
  102526:	c1 e2 04             	shl    $0x4,%edx
  102529:	01 d0                	add    %edx,%eax
  10252b:	c1 e0 02             	shl    $0x2,%eax
  10252e:	01 c8                	add    %ecx,%eax
  102530:	05 2c 40 00 00       	add    $0x402c,%eax
  102535:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10253b:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102541:	8b 08                	mov    (%eax),%ecx
  102543:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102546:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  10254c:	89 c8                	mov    %ecx,%eax
  10254e:	01 c0                	add    %eax,%eax
  102550:	01 c8                	add    %ecx,%eax
  102552:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102559:	01 c8                	add    %ecx,%eax
  10255b:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102562:	01 c8                	add    %ecx,%eax
  102564:	89 c1                	mov    %eax,%ecx
  102566:	c1 e1 04             	shl    $0x4,%ecx
  102569:	01 c8                	add    %ecx,%eax
  10256b:	c1 e0 02             	shl    $0x2,%eax
  10256e:	01 d8                	add    %ebx,%eax
  102570:	05 2c 40 00 00       	add    $0x402c,%eax
  102575:	89 10                	mov    %edx,(%eax)
  102577:	eb 3e                	jmp    1025b7 <syscallFork+0xb6e>
  102579:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10257f:	8b 10                	mov    (%eax),%edx
  102581:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102587:	89 d0                	mov    %edx,%eax
  102589:	01 c0                	add    %eax,%eax
  10258b:	01 d0                	add    %edx,%eax
  10258d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102594:	01 d0                	add    %edx,%eax
  102596:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10259d:	01 d0                	add    %edx,%eax
  10259f:	89 c2                	mov    %eax,%edx
  1025a1:	c1 e2 04             	shl    $0x4,%edx
  1025a4:	01 d0                	add    %edx,%eax
  1025a6:	c1 e0 02             	shl    $0x2,%eax
  1025a9:	01 c8                	add    %ecx,%eax
  1025ab:	05 2c 40 00 00       	add    $0x402c,%eax
  1025b0:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  1025b6:	90                   	nop
  1025b7:	83 c4 10             	add    $0x10,%esp
  1025ba:	5b                   	pop    %ebx
  1025bb:	5e                   	pop    %esi
  1025bc:	5d                   	pop    %ebp
  1025bd:	c3                   	ret    

001025be <syscallExec>:
  1025be:	55                   	push   %ebp
  1025bf:	89 e5                	mov    %esp,%ebp
  1025c1:	53                   	push   %ebx
  1025c2:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1025c8:	e8 ef 02 00 00       	call   1028bc <__x86.get_pc_thunk.dx>
  1025cd:	81 c2 33 3a 00 00    	add    $0x3a33,%edx
  1025d3:	8b 45 08             	mov    0x8(%ebp),%eax
  1025d6:	8b 40 0c             	mov    0xc(%eax),%eax
  1025d9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1025dc:	8b 45 08             	mov    0x8(%ebp),%eax
  1025df:	8b 40 28             	mov    0x28(%eax),%eax
  1025e2:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1025e5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1025ec:	c6 45 f3 00          	movb   $0x0,-0xd(%ebp)
  1025f0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1025f7:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1025fe:	00 00 00 
  102601:	8e 45 e4             	mov    -0x1c(%ebp),%es
  102604:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102607:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10260a:	01 c8                	add    %ecx,%eax
  10260c:	26 8a 00             	mov    %es:(%eax),%al
  10260f:	88 45 f3             	mov    %al,-0xd(%ebp)
  102612:	eb 21                	jmp    102635 <syscallExec+0x77>
  102614:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  10261a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10261d:	01 c1                	add    %eax,%ecx
  10261f:	8a 45 f3             	mov    -0xd(%ebp),%al
  102622:	88 01                	mov    %al,(%ecx)
  102624:	ff 45 f4             	incl   -0xc(%ebp)
  102627:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10262a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10262d:	01 c8                	add    %ecx,%eax
  10262f:	26 8a 00             	mov    %es:(%eax),%al
  102632:	88 45 f3             	mov    %al,-0xd(%ebp)
  102635:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  102639:	75 d9                	jne    102614 <syscallExec+0x56>
  10263b:	8d 8d 64 ff ff ff    	lea    -0x9c(%ebp),%ecx
  102641:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102644:	01 c8                	add    %ecx,%eax
  102646:	c6 00 00             	movb   $0x0,(%eax)
  102649:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  10264f:	8b 00                	mov    (%eax),%eax
  102651:	40                   	inc    %eax
  102652:	c1 e0 14             	shl    $0x14,%eax
  102655:	89 c1                	mov    %eax,%ecx
  102657:	83 ec 04             	sub    $0x4,%esp
  10265a:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  102660:	50                   	push   %eax
  102661:	51                   	push   %ecx
  102662:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  102668:	50                   	push   %eax
  102669:	89 d3                	mov    %edx,%ebx
  10266b:	e8 00 0e 00 00       	call   103470 <loadElf>
  102670:	83 c4 10             	add    $0x10,%esp
  102673:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102676:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  10267a:	75 0c                	jne    102688 <syscallExec+0xca>
  10267c:	8b 45 08             	mov    0x8(%ebp),%eax
  10267f:	c7 40 2c ff ff ff ff 	movl   $0xffffffff,0x2c(%eax)
  102686:	eb 0d                	jmp    102695 <syscallExec+0xd7>
  102688:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
  10268e:	8b 45 08             	mov    0x8(%ebp),%eax
  102691:	89 50 38             	mov    %edx,0x38(%eax)
  102694:	90                   	nop
  102695:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102698:	c9                   	leave  
  102699:	c3                   	ret    

0010269a <syscallSleep>:
  10269a:	55                   	push   %ebp
  10269b:	89 e5                	mov    %esp,%ebp
  10269d:	53                   	push   %ebx
  10269e:	e8 19 02 00 00       	call   1028bc <__x86.get_pc_thunk.dx>
  1026a3:	81 c2 5d 39 00 00    	add    $0x395d,%edx
  1026a9:	8b 45 08             	mov    0x8(%ebp),%eax
  1026ac:	8b 40 28             	mov    0x28(%eax),%eax
  1026af:	85 c0                	test   %eax,%eax
  1026b1:	0f 84 81 00 00 00    	je     102738 <syscallSleep+0x9e>
  1026b7:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1026bd:	8b 08                	mov    (%eax),%ecx
  1026bf:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  1026c5:	89 c8                	mov    %ecx,%eax
  1026c7:	01 c0                	add    %eax,%eax
  1026c9:	01 c8                	add    %ecx,%eax
  1026cb:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1026d2:	01 c8                	add    %ecx,%eax
  1026d4:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1026db:	01 c8                	add    %ecx,%eax
  1026dd:	89 c1                	mov    %eax,%ecx
  1026df:	c1 e1 04             	shl    $0x4,%ecx
  1026e2:	01 c8                	add    %ecx,%eax
  1026e4:	c1 e0 02             	shl    $0x2,%eax
  1026e7:	01 d8                	add    %ebx,%eax
  1026e9:	05 54 40 00 00       	add    $0x4054,%eax
  1026ee:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  1026f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1026f7:	8b 58 28             	mov    0x28(%eax),%ebx
  1026fa:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  102700:	8b 08                	mov    (%eax),%ecx
  102702:	c7 c2 60 84 10 00    	mov    $0x108460,%edx
  102708:	89 c8                	mov    %ecx,%eax
  10270a:	01 c0                	add    %eax,%eax
  10270c:	01 c8                	add    %ecx,%eax
  10270e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102715:	01 c8                	add    %ecx,%eax
  102717:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  10271e:	01 c8                	add    %ecx,%eax
  102720:	89 c1                	mov    %eax,%ecx
  102722:	c1 e1 04             	shl    $0x4,%ecx
  102725:	01 c8                	add    %ecx,%eax
  102727:	c1 e0 02             	shl    $0x2,%eax
  10272a:	01 d0                	add    %edx,%eax
  10272c:	05 5c 40 00 00       	add    $0x405c,%eax
  102731:	89 18                	mov    %ebx,(%eax)
  102733:	cd 20                	int    $0x20
  102735:	90                   	nop
  102736:	eb 01                	jmp    102739 <syscallSleep+0x9f>
  102738:	90                   	nop
  102739:	5b                   	pop    %ebx
  10273a:	5d                   	pop    %ebp
  10273b:	c3                   	ret    

0010273c <syscallExit>:
  10273c:	55                   	push   %ebp
  10273d:	89 e5                	mov    %esp,%ebp
  10273f:	e8 01 dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102744:	05 bc 38 00 00       	add    $0x38bc,%eax
  102749:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  10274f:	8b 12                	mov    (%edx),%edx
  102751:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  102757:	89 d0                	mov    %edx,%eax
  102759:	01 c0                	add    %eax,%eax
  10275b:	01 d0                	add    %edx,%eax
  10275d:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102764:	01 d0                	add    %edx,%eax
  102766:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10276d:	01 d0                	add    %edx,%eax
  10276f:	89 c2                	mov    %eax,%edx
  102771:	c1 e2 04             	shl    $0x4,%edx
  102774:	01 d0                	add    %edx,%eax
  102776:	c1 e0 02             	shl    $0x2,%eax
  102779:	01 c8                	add    %ecx,%eax
  10277b:	05 54 40 00 00       	add    $0x4054,%eax
  102780:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  102786:	cd 20                	int    $0x20
  102788:	90                   	nop
  102789:	5d                   	pop    %ebp
  10278a:	c3                   	ret    

0010278b <syscallSem>:
  10278b:	55                   	push   %ebp
  10278c:	89 e5                	mov    %esp,%ebp
  10278e:	83 ec 08             	sub    $0x8,%esp
  102791:	e8 af dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102796:	05 6a 38 00 00       	add    $0x386a,%eax
  10279b:	8b 45 08             	mov    0x8(%ebp),%eax
  10279e:	8b 40 28             	mov    0x28(%eax),%eax
  1027a1:	83 f8 01             	cmp    $0x1,%eax
  1027a4:	74 21                	je     1027c7 <syscallSem+0x3c>
  1027a6:	83 f8 01             	cmp    $0x1,%eax
  1027a9:	72 0c                	jb     1027b7 <syscallSem+0x2c>
  1027ab:	83 f8 02             	cmp    $0x2,%eax
  1027ae:	74 27                	je     1027d7 <syscallSem+0x4c>
  1027b0:	83 f8 03             	cmp    $0x3,%eax
  1027b3:	74 32                	je     1027e7 <syscallSem+0x5c>
  1027b5:	eb 3f                	jmp    1027f6 <syscallSem+0x6b>
  1027b7:	83 ec 0c             	sub    $0xc,%esp
  1027ba:	ff 75 08             	pushl  0x8(%ebp)
  1027bd:	e8 37 00 00 00       	call   1027f9 <syscallSemInit>
  1027c2:	83 c4 10             	add    $0x10,%esp
  1027c5:	eb 2f                	jmp    1027f6 <syscallSem+0x6b>
  1027c7:	83 ec 0c             	sub    $0xc,%esp
  1027ca:	ff 75 08             	pushl  0x8(%ebp)
  1027cd:	e8 37 00 00 00       	call   102809 <syscallSemWait>
  1027d2:	83 c4 10             	add    $0x10,%esp
  1027d5:	eb 1f                	jmp    1027f6 <syscallSem+0x6b>
  1027d7:	83 ec 0c             	sub    $0xc,%esp
  1027da:	ff 75 08             	pushl  0x8(%ebp)
  1027dd:	e8 37 00 00 00       	call   102819 <syscallSemPost>
  1027e2:	83 c4 10             	add    $0x10,%esp
  1027e5:	eb 0f                	jmp    1027f6 <syscallSem+0x6b>
  1027e7:	83 ec 0c             	sub    $0xc,%esp
  1027ea:	ff 75 08             	pushl  0x8(%ebp)
  1027ed:	e8 37 00 00 00       	call   102829 <syscallSemDestroy>
  1027f2:	83 c4 10             	add    $0x10,%esp
  1027f5:	90                   	nop
  1027f6:	90                   	nop
  1027f7:	c9                   	leave  
  1027f8:	c3                   	ret    

001027f9 <syscallSemInit>:
  1027f9:	55                   	push   %ebp
  1027fa:	89 e5                	mov    %esp,%ebp
  1027fc:	e8 44 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102801:	05 ff 37 00 00       	add    $0x37ff,%eax
  102806:	90                   	nop
  102807:	5d                   	pop    %ebp
  102808:	c3                   	ret    

00102809 <syscallSemWait>:
  102809:	55                   	push   %ebp
  10280a:	89 e5                	mov    %esp,%ebp
  10280c:	e8 34 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102811:	05 ef 37 00 00       	add    $0x37ef,%eax
  102816:	90                   	nop
  102817:	5d                   	pop    %ebp
  102818:	c3                   	ret    

00102819 <syscallSemPost>:
  102819:	55                   	push   %ebp
  10281a:	89 e5                	mov    %esp,%ebp
  10281c:	e8 24 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102821:	05 df 37 00 00       	add    $0x37df,%eax
  102826:	90                   	nop
  102827:	5d                   	pop    %ebp
  102828:	c3                   	ret    

00102829 <syscallSemDestroy>:
  102829:	55                   	push   %ebp
  10282a:	89 e5                	mov    %esp,%ebp
  10282c:	e8 14 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102831:	05 cf 37 00 00       	add    $0x37cf,%eax
  102836:	90                   	nop
  102837:	5d                   	pop    %ebp
  102838:	c3                   	ret    

00102839 <syscallGetPid>:
  102839:	55                   	push   %ebp
  10283a:	89 e5                	mov    %esp,%ebp
  10283c:	53                   	push   %ebx
  10283d:	e8 03 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102842:	05 be 37 00 00       	add    $0x37be,%eax
  102847:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  10284d:	8b 0a                	mov    (%edx),%ecx
  10284f:	c7 c2 44 80 10 00    	mov    $0x108044,%edx
  102855:	8b 12                	mov    (%edx),%edx
  102857:	c7 c3 60 84 10 00    	mov    $0x108460,%ebx
  10285d:	89 d0                	mov    %edx,%eax
  10285f:	01 c0                	add    %eax,%eax
  102861:	01 d0                	add    %edx,%eax
  102863:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  10286a:	01 d0                	add    %edx,%eax
  10286c:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  102873:	01 d0                	add    %edx,%eax
  102875:	89 c2                	mov    %eax,%edx
  102877:	c1 e2 04             	shl    $0x4,%edx
  10287a:	01 d0                	add    %edx,%eax
  10287c:	c1 e0 02             	shl    $0x2,%eax
  10287f:	01 d8                	add    %ebx,%eax
  102881:	05 2c 40 00 00       	add    $0x402c,%eax
  102886:	89 08                	mov    %ecx,(%eax)
  102888:	90                   	nop
  102889:	5b                   	pop    %ebx
  10288a:	5d                   	pop    %ebp
  10288b:	c3                   	ret    

0010288c <GProtectFaultHandle>:
  10288c:	55                   	push   %ebp
  10288d:	89 e5                	mov    %esp,%ebp
  10288f:	53                   	push   %ebx
  102890:	83 ec 04             	sub    $0x4,%esp
  102893:	e8 ad db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102898:	05 68 37 00 00       	add    $0x3768,%eax
  10289d:	83 ec 08             	sub    $0x8,%esp
  1028a0:	68 11 02 00 00       	push   $0x211
  1028a5:	8d 90 c8 e2 ff ff    	lea    -0x1d38(%eax),%edx
  1028ab:	52                   	push   %edx
  1028ac:	89 c3                	mov    %eax,%ebx
  1028ae:	e8 e6 16 00 00       	call   103f99 <abort>
  1028b3:	83 c4 10             	add    $0x10,%esp
  1028b6:	90                   	nop
  1028b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1028ba:	c9                   	leave  
  1028bb:	c3                   	ret    

001028bc <__x86.get_pc_thunk.dx>:
  1028bc:	8b 14 24             	mov    (%esp),%edx
  1028bf:	c3                   	ret    

001028c0 <inByte>:
  1028c0:	55                   	push   %ebp
  1028c1:	89 e5                	mov    %esp,%ebp
  1028c3:	83 ec 14             	sub    $0x14,%esp
  1028c6:	e8 7a db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028cb:	05 35 37 00 00       	add    $0x3735,%eax
  1028d0:	8b 45 08             	mov    0x8(%ebp),%eax
  1028d3:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1028d7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028da:	89 c2                	mov    %eax,%edx
  1028dc:	ec                   	in     (%dx),%al
  1028dd:	88 45 ff             	mov    %al,-0x1(%ebp)
  1028e0:	8a 45 ff             	mov    -0x1(%ebp),%al
  1028e3:	c9                   	leave  
  1028e4:	c3                   	ret    

001028e5 <outByte>:
  1028e5:	55                   	push   %ebp
  1028e6:	89 e5                	mov    %esp,%ebp
  1028e8:	83 ec 08             	sub    $0x8,%esp
  1028eb:	e8 55 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028f0:	05 10 37 00 00       	add    $0x3710,%eax
  1028f5:	8b 45 08             	mov    0x8(%ebp),%eax
  1028f8:	8b 55 0c             	mov    0xc(%ebp),%edx
  1028fb:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1028ff:	88 d0                	mov    %dl,%al
  102901:	88 45 f8             	mov    %al,-0x8(%ebp)
  102904:	8a 45 f8             	mov    -0x8(%ebp),%al
  102907:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10290a:	ee                   	out    %al,(%dx)
  10290b:	90                   	nop
  10290c:	c9                   	leave  
  10290d:	c3                   	ret    

0010290e <initKeyTable>:
  10290e:	55                   	push   %ebp
  10290f:	89 e5                	mov    %esp,%ebp
  102911:	83 ec 10             	sub    $0x10,%esp
  102914:	e8 2c db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102919:	05 e7 36 00 00       	add    $0x36e7,%eax
  10291e:	c7 c2 60 7e 10 00    	mov    $0x107e60,%edx
  102924:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10292a:	c7 c2 40 7a 10 00    	mov    $0x107a40,%edx
  102930:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102936:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  10293d:	00 00 00 
  102940:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102946:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  10294c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102953:	eb 1f                	jmp    102974 <initKeyTable+0x66>
  102955:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  10295b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10295e:	01 ca                	add    %ecx,%edx
  102960:	c6 02 00             	movb   $0x0,(%edx)
  102963:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  102969:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10296c:	01 ca                	add    %ecx,%edx
  10296e:	c6 02 00             	movb   $0x0,(%edx)
  102971:	ff 45 fc             	incl   -0x4(%ebp)
  102974:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  102978:	7e db                	jle    102955 <initKeyTable+0x47>
  10297a:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  102981:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  102988:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  10298f:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  102996:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  10299d:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  1029a4:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  1029ab:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  1029b2:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  1029b9:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  1029c0:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  1029c7:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  1029ce:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  1029d5:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  1029dc:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  1029e3:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  1029ea:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  1029f1:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  1029f8:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  1029ff:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  102a06:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  102a0d:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  102a14:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  102a1b:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  102a22:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  102a29:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  102a30:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  102a37:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  102a3e:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  102a45:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  102a4c:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  102a53:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  102a5a:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  102a61:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  102a68:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  102a6f:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  102a76:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  102a7d:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  102a84:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  102a8b:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  102a92:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  102a99:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  102aa0:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  102aa7:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  102aae:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  102ab5:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  102abc:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  102ac3:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  102aca:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  102ad1:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  102ad8:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  102adf:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  102ae6:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  102aed:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  102af4:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  102afb:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  102b02:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  102b09:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  102b10:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  102b17:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  102b1e:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  102b25:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  102b2c:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  102b33:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  102b3a:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  102b41:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  102b48:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  102b4f:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  102b56:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  102b5d:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  102b64:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  102b6b:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  102b72:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  102b79:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  102b80:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  102b87:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  102b8e:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  102b95:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  102b9c:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  102ba3:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  102baa:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  102bb1:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  102bb8:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  102bbf:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  102bc6:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  102bcd:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  102bd4:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  102bdb:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  102be2:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  102be9:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  102bf0:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  102bf7:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  102bfe:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  102c05:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  102c0c:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  102c13:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  102c1a:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  102c21:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  102c28:	90                   	nop
  102c29:	c9                   	leave  
  102c2a:	c3                   	ret    

00102c2b <getKeyCode>:
  102c2b:	55                   	push   %ebp
  102c2c:	89 e5                	mov    %esp,%ebp
  102c2e:	83 ec 10             	sub    $0x10,%esp
  102c31:	e8 0f d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c36:	05 ca 33 00 00       	add    $0x33ca,%eax
  102c3b:	6a 60                	push   $0x60
  102c3d:	e8 7e fc ff ff       	call   1028c0 <inByte>
  102c42:	83 c4 04             	add    $0x4,%esp
  102c45:	0f b6 c0             	movzbl %al,%eax
  102c48:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102c4b:	6a 61                	push   $0x61
  102c4d:	e8 6e fc ff ff       	call   1028c0 <inByte>
  102c52:	83 c4 04             	add    $0x4,%esp
  102c55:	0f b6 c0             	movzbl %al,%eax
  102c58:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102c5b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102c5e:	83 c8 80             	or     $0xffffff80,%eax
  102c61:	0f be c0             	movsbl %al,%eax
  102c64:	50                   	push   %eax
  102c65:	6a 61                	push   $0x61
  102c67:	e8 79 fc ff ff       	call   1028e5 <outByte>
  102c6c:	83 c4 08             	add    $0x8,%esp
  102c6f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102c72:	0f be c0             	movsbl %al,%eax
  102c75:	50                   	push   %eax
  102c76:	6a 61                	push   $0x61
  102c78:	e8 68 fc ff ff       	call   1028e5 <outByte>
  102c7d:	83 c4 08             	add    $0x8,%esp
  102c80:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  102c87:	77 05                	ja     102c8e <getKeyCode+0x63>
  102c89:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102c8c:	eb 05                	jmp    102c93 <getKeyCode+0x68>
  102c8e:	b8 00 00 00 00       	mov    $0x0,%eax
  102c93:	c9                   	leave  
  102c94:	c3                   	ret    

00102c95 <switchKeyboard>:
  102c95:	55                   	push   %ebp
  102c96:	89 e5                	mov    %esp,%ebp
  102c98:	e8 a8 d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c9d:	05 63 33 00 00       	add    $0x3363,%eax
  102ca2:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  102ca8:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102cae:	39 d1                	cmp    %edx,%ecx
  102cb0:	75 0e                	jne    102cc0 <switchKeyboard+0x2b>
  102cb2:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  102cb8:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102cbe:	eb 0c                	jmp    102ccc <switchKeyboard+0x37>
  102cc0:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  102cc6:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  102ccc:	90                   	nop
  102ccd:	5d                   	pop    %ebp
  102cce:	c3                   	ret    

00102ccf <getChar>:
  102ccf:	55                   	push   %ebp
  102cd0:	89 e5                	mov    %esp,%ebp
  102cd2:	53                   	push   %ebx
  102cd3:	e8 5d db ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102cd8:	81 c3 28 33 00 00    	add    $0x3328,%ebx
  102cde:	8b 45 08             	mov    0x8(%ebp),%eax
  102ce1:	83 f8 3a             	cmp    $0x3a,%eax
  102ce4:	74 32                	je     102d18 <getChar+0x49>
  102ce6:	83 f8 3a             	cmp    $0x3a,%eax
  102ce9:	77 0f                	ja     102cfa <getChar+0x2b>
  102ceb:	83 f8 2a             	cmp    $0x2a,%eax
  102cee:	74 21                	je     102d11 <getChar+0x42>
  102cf0:	83 f8 36             	cmp    $0x36,%eax
  102cf3:	74 1c                	je     102d11 <getChar+0x42>
  102cf5:	e9 87 00 00 00       	jmp    102d81 <getChar+0xb2>
  102cfa:	3d b6 00 00 00       	cmp    $0xb6,%eax
  102cff:	74 10                	je     102d11 <getChar+0x42>
  102d01:	3d ba 00 00 00       	cmp    $0xba,%eax
  102d06:	74 42                	je     102d4a <getChar+0x7b>
  102d08:	3d aa 00 00 00       	cmp    $0xaa,%eax
  102d0d:	74 02                	je     102d11 <getChar+0x42>
  102d0f:	eb 70                	jmp    102d81 <getChar+0xb2>
  102d11:	e8 7f ff ff ff       	call   102c95 <switchKeyboard>
  102d16:	eb 69                	jmp    102d81 <getChar+0xb2>
  102d18:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d1e:	85 c0                	test   %eax,%eax
  102d20:	75 11                	jne    102d33 <getChar+0x64>
  102d22:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102d29:	00 00 00 
  102d2c:	e8 64 ff ff ff       	call   102c95 <switchKeyboard>
  102d31:	eb 4a                	jmp    102d7d <getChar+0xae>
  102d33:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d39:	83 f8 01             	cmp    $0x1,%eax
  102d3c:	75 3f                	jne    102d7d <getChar+0xae>
  102d3e:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  102d45:	00 00 00 
  102d48:	eb 33                	jmp    102d7d <getChar+0xae>
  102d4a:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d50:	83 f8 01             	cmp    $0x1,%eax
  102d53:	75 0c                	jne    102d61 <getChar+0x92>
  102d55:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  102d5c:	00 00 00 
  102d5f:	eb 1f                	jmp    102d80 <getChar+0xb1>
  102d61:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  102d67:	83 f8 02             	cmp    $0x2,%eax
  102d6a:	75 14                	jne    102d80 <getChar+0xb1>
  102d6c:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  102d73:	00 00 00 
  102d76:	e8 1a ff ff ff       	call   102c95 <switchKeyboard>
  102d7b:	eb 03                	jmp    102d80 <getChar+0xb1>
  102d7d:	90                   	nop
  102d7e:	eb 01                	jmp    102d81 <getChar+0xb2>
  102d80:	90                   	nop
  102d81:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  102d85:	76 04                	jbe    102d8b <getChar+0xbc>
  102d87:	b0 00                	mov    $0x0,%al
  102d89:	eb 0d                	jmp    102d98 <getChar+0xc9>
  102d8b:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  102d91:	8b 45 08             	mov    0x8(%ebp),%eax
  102d94:	01 d0                	add    %edx,%eax
  102d96:	8a 00                	mov    (%eax),%al
  102d98:	5b                   	pop    %ebx
  102d99:	5d                   	pop    %ebp
  102d9a:	c3                   	ret    

00102d9b <waitForInterrupt>:
  102d9b:	55                   	push   %ebp
  102d9c:	89 e5                	mov    %esp,%ebp
  102d9e:	e8 a2 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102da3:	05 5d 32 00 00       	add    $0x325d,%eax
  102da8:	f4                   	hlt    
  102da9:	90                   	nop
  102daa:	5d                   	pop    %ebp
  102dab:	c3                   	ret    

00102dac <enableInterrupt>:
  102dac:	55                   	push   %ebp
  102dad:	89 e5                	mov    %esp,%ebp
  102daf:	e8 91 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102db4:	05 4c 32 00 00       	add    $0x324c,%eax
  102db9:	fb                   	sti    
  102dba:	90                   	nop
  102dbb:	5d                   	pop    %ebp
  102dbc:	c3                   	ret    

00102dbd <setGdt>:
  102dbd:	55                   	push   %ebp
  102dbe:	89 e5                	mov    %esp,%ebp
  102dc0:	e8 80 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dc5:	05 3b 32 00 00       	add    $0x323b,%eax
  102dca:	8b 55 0c             	mov    0xc(%ebp),%edx
  102dcd:	4a                   	dec    %edx
  102dce:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  102dd5:	8b 55 08             	mov    0x8(%ebp),%edx
  102dd8:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  102ddf:	8b 55 08             	mov    0x8(%ebp),%edx
  102de2:	c1 ea 10             	shr    $0x10,%edx
  102de5:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  102dec:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  102df2:	0f 01 10             	lgdtl  (%eax)
  102df5:	90                   	nop
  102df6:	5d                   	pop    %ebp
  102df7:	c3                   	ret    

00102df8 <lLdt>:
  102df8:	55                   	push   %ebp
  102df9:	89 e5                	mov    %esp,%ebp
  102dfb:	83 ec 04             	sub    $0x4,%esp
  102dfe:	e8 42 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e03:	05 fd 31 00 00       	add    $0x31fd,%eax
  102e08:	8b 45 08             	mov    0x8(%ebp),%eax
  102e0b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102e0f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102e12:	0f 00 d0             	lldt   %ax
  102e15:	90                   	nop
  102e16:	c9                   	leave  
  102e17:	c3                   	ret    

00102e18 <initSeg>:
  102e18:	55                   	push   %ebp
  102e19:	89 e5                	mov    %esp,%ebp
  102e1b:	56                   	push   %esi
  102e1c:	53                   	push   %ebx
  102e1d:	83 ec 14             	sub    $0x14,%esp
  102e20:	e8 10 da ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102e25:	81 c3 db 31 00 00    	add    $0x31db,%ebx
  102e2b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102e32:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e38:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  102e3e:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e44:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  102e4a:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e50:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  102e54:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e5a:	8a 50 0d             	mov    0xd(%eax),%dl
  102e5d:	83 e2 f0             	and    $0xfffffff0,%edx
  102e60:	83 ca 0a             	or     $0xa,%edx
  102e63:	88 50 0d             	mov    %dl,0xd(%eax)
  102e66:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e6c:	8a 50 0d             	mov    0xd(%eax),%dl
  102e6f:	83 ca 10             	or     $0x10,%edx
  102e72:	88 50 0d             	mov    %dl,0xd(%eax)
  102e75:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e7b:	8a 50 0d             	mov    0xd(%eax),%dl
  102e7e:	83 e2 9f             	and    $0xffffff9f,%edx
  102e81:	88 50 0d             	mov    %dl,0xd(%eax)
  102e84:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e8a:	8a 50 0d             	mov    0xd(%eax),%dl
  102e8d:	83 ca 80             	or     $0xffffff80,%edx
  102e90:	88 50 0d             	mov    %dl,0xd(%eax)
  102e93:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102e99:	8a 50 0e             	mov    0xe(%eax),%dl
  102e9c:	83 ca 0f             	or     $0xf,%edx
  102e9f:	88 50 0e             	mov    %dl,0xe(%eax)
  102ea2:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ea8:	8a 50 0e             	mov    0xe(%eax),%dl
  102eab:	83 e2 ef             	and    $0xffffffef,%edx
  102eae:	88 50 0e             	mov    %dl,0xe(%eax)
  102eb1:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102eb7:	8a 50 0e             	mov    0xe(%eax),%dl
  102eba:	83 e2 df             	and    $0xffffffdf,%edx
  102ebd:	88 50 0e             	mov    %dl,0xe(%eax)
  102ec0:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ec6:	8a 50 0e             	mov    0xe(%eax),%dl
  102ec9:	83 ca 40             	or     $0x40,%edx
  102ecc:	88 50 0e             	mov    %dl,0xe(%eax)
  102ecf:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ed5:	8a 50 0e             	mov    0xe(%eax),%dl
  102ed8:	83 ca 80             	or     $0xffffff80,%edx
  102edb:	88 50 0e             	mov    %dl,0xe(%eax)
  102ede:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102ee4:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  102ee8:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102eee:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  102ef4:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102efa:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  102f00:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f06:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  102f0a:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f10:	8a 50 15             	mov    0x15(%eax),%dl
  102f13:	83 e2 f0             	and    $0xfffffff0,%edx
  102f16:	83 ca 02             	or     $0x2,%edx
  102f19:	88 50 15             	mov    %dl,0x15(%eax)
  102f1c:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f22:	8a 50 15             	mov    0x15(%eax),%dl
  102f25:	83 ca 10             	or     $0x10,%edx
  102f28:	88 50 15             	mov    %dl,0x15(%eax)
  102f2b:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f31:	8a 50 15             	mov    0x15(%eax),%dl
  102f34:	83 e2 9f             	and    $0xffffff9f,%edx
  102f37:	88 50 15             	mov    %dl,0x15(%eax)
  102f3a:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f40:	8a 50 15             	mov    0x15(%eax),%dl
  102f43:	83 ca 80             	or     $0xffffff80,%edx
  102f46:	88 50 15             	mov    %dl,0x15(%eax)
  102f49:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f4f:	8a 50 16             	mov    0x16(%eax),%dl
  102f52:	83 ca 0f             	or     $0xf,%edx
  102f55:	88 50 16             	mov    %dl,0x16(%eax)
  102f58:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f5e:	8a 50 16             	mov    0x16(%eax),%dl
  102f61:	83 e2 ef             	and    $0xffffffef,%edx
  102f64:	88 50 16             	mov    %dl,0x16(%eax)
  102f67:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f6d:	8a 50 16             	mov    0x16(%eax),%dl
  102f70:	83 e2 df             	and    $0xffffffdf,%edx
  102f73:	88 50 16             	mov    %dl,0x16(%eax)
  102f76:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f7c:	8a 50 16             	mov    0x16(%eax),%dl
  102f7f:	83 ca 40             	or     $0x40,%edx
  102f82:	88 50 16             	mov    %dl,0x16(%eax)
  102f85:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f8b:	8a 50 16             	mov    0x16(%eax),%dl
  102f8e:	83 ca 80             	or     $0xffffff80,%edx
  102f91:	88 50 16             	mov    %dl,0x16(%eax)
  102f94:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  102f9a:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  102f9e:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  102fa5:	e9 e1 01 00 00       	jmp    10318b <initSeg+0x373>
  102faa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102fad:	01 c0                	add    %eax,%eax
  102faf:	40                   	inc    %eax
  102fb0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102fb3:	42                   	inc    %edx
  102fb4:	c1 e2 14             	shl    $0x14,%edx
  102fb7:	c1 ea 10             	shr    $0x10,%edx
  102fba:	88 d1                	mov    %dl,%cl
  102fbc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102fbf:	42                   	inc    %edx
  102fc0:	c1 e2 14             	shl    $0x14,%edx
  102fc3:	c1 ea 18             	shr    $0x18,%edx
  102fc6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  102fc9:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fcf:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  102fd5:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fdb:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  102fe2:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102fe8:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  102fec:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  102ff2:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  102ff6:	83 e1 f0             	and    $0xfffffff0,%ecx
  102ff9:	89 ce                	mov    %ecx,%esi
  102ffb:	83 ce 0a             	or     $0xa,%esi
  102ffe:	89 f1                	mov    %esi,%ecx
  103000:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103004:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10300a:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10300e:	83 c9 10             	or     $0x10,%ecx
  103011:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103015:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10301b:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10301f:	83 c9 60             	or     $0x60,%ecx
  103022:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103026:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10302c:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  103030:	83 c9 80             	or     $0xffffff80,%ecx
  103033:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103037:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10303d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103041:	83 e1 f0             	and    $0xfffffff0,%ecx
  103044:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103048:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10304e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103052:	83 e1 ef             	and    $0xffffffef,%ecx
  103055:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103059:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10305f:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103063:	83 e1 df             	and    $0xffffffdf,%ecx
  103066:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10306a:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103070:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103074:	83 c9 40             	or     $0x40,%ecx
  103077:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10307b:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103081:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103085:	83 c9 80             	or     $0xffffff80,%ecx
  103088:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10308c:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103092:	8a 4d e7             	mov    -0x19(%ebp),%cl
  103095:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  103099:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10309c:	40                   	inc    %eax
  10309d:	01 c0                	add    %eax,%eax
  10309f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1030a2:	42                   	inc    %edx
  1030a3:	c1 e2 14             	shl    $0x14,%edx
  1030a6:	c1 ea 10             	shr    $0x10,%edx
  1030a9:	88 d1                	mov    %dl,%cl
  1030ab:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1030ae:	42                   	inc    %edx
  1030af:	c1 e2 14             	shl    $0x14,%edx
  1030b2:	c1 ea 18             	shr    $0x18,%edx
  1030b5:	88 55 e7             	mov    %dl,-0x19(%ebp)
  1030b8:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030be:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  1030c4:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030ca:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  1030d1:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030d7:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  1030db:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030e1:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030e5:	83 e1 f0             	and    $0xfffffff0,%ecx
  1030e8:	89 ce                	mov    %ecx,%esi
  1030ea:	83 ce 02             	or     $0x2,%esi
  1030ed:	89 f1                	mov    %esi,%ecx
  1030ef:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  1030f3:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1030f9:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  1030fd:	83 c9 10             	or     $0x10,%ecx
  103100:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103104:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10310a:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10310e:	83 c9 60             	or     $0x60,%ecx
  103111:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103115:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10311b:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10311f:	83 c9 80             	or     $0xffffff80,%ecx
  103122:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  103126:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10312c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103130:	83 e1 f0             	and    $0xfffffff0,%ecx
  103133:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103137:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10313d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103141:	83 e1 ef             	and    $0xffffffef,%ecx
  103144:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103148:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10314e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103152:	83 e1 df             	and    $0xffffffdf,%ecx
  103155:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  103159:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  10315f:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103163:	83 c9 40             	or     $0x40,%ecx
  103166:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10316a:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103170:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  103174:	83 c9 80             	or     $0xffffff80,%ecx
  103177:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10317b:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  103181:	8a 4d e7             	mov    -0x19(%ebp),%cl
  103184:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  103188:	ff 45 f4             	incl   -0xc(%ebp)
  10318b:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  10318f:	0f 8e 15 fe ff ff    	jle    102faa <initSeg+0x192>
  103195:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10319b:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  1031a2:	63 00 
  1031a4:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1031aa:	c7 c2 40 7f 10 00    	mov    $0x107f40,%edx
  1031b0:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  1031b7:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1031bd:	c1 e8 10             	shr    $0x10,%eax
  1031c0:	88 c2                	mov    %al,%dl
  1031c2:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031c8:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  1031ce:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031d4:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1031da:	83 e2 f0             	and    $0xfffffff0,%edx
  1031dd:	83 ca 09             	or     $0x9,%edx
  1031e0:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1031e6:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1031ec:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1031f2:	83 e2 ef             	and    $0xffffffef,%edx
  1031f5:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1031fb:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103201:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  103207:	83 e2 9f             	and    $0xffffff9f,%edx
  10320a:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103210:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103216:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10321c:	83 ca 80             	or     $0xffffff80,%edx
  10321f:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  103225:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10322b:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103231:	83 e2 f0             	and    $0xfffffff0,%edx
  103234:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10323a:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103240:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103246:	83 e2 ef             	and    $0xffffffef,%edx
  103249:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10324f:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  103255:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10325b:	83 e2 df             	and    $0xffffffdf,%edx
  10325e:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103264:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10326a:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103270:	83 ca 40             	or     $0x40,%edx
  103273:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  103279:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10327f:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  103285:	83 e2 7f             	and    $0x7f,%edx
  103288:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10328e:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  103294:	c1 e8 18             	shr    $0x18,%eax
  103297:	88 c2                	mov    %al,%dl
  103299:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  10329f:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  1032a5:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032ab:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1032b1:	83 e2 ef             	and    $0xffffffef,%edx
  1032b4:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1032ba:	68 a0 00 00 00       	push   $0xa0
  1032bf:	c7 c0 40 7f 10 00    	mov    $0x107f40,%eax
  1032c5:	50                   	push   %eax
  1032c6:	e8 f2 fa ff ff       	call   102dbd <setGdt>
  1032cb:	83 c4 08             	add    $0x8,%esp
  1032ce:	c7 c0 e0 7f 10 00    	mov    $0x107fe0,%eax
  1032d4:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  1032db:	b8 98 00 00 00       	mov    $0x98,%eax
  1032e0:	0f 00 d8             	ltr    %ax
  1032e3:	b8 10 00 00 00       	mov    $0x10,%eax
  1032e8:	8e d8                	mov    %eax,%ds
  1032ea:	b8 10 00 00 00       	mov    $0x10,%eax
  1032ef:	8e d0                	mov    %eax,%ss
  1032f1:	6a 00                	push   $0x0
  1032f3:	e8 00 fb ff ff       	call   102df8 <lLdt>
  1032f8:	83 c4 04             	add    $0x4,%esp
  1032fb:	90                   	nop
  1032fc:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1032ff:	5b                   	pop    %ebx
  103300:	5e                   	pop    %esi
  103301:	5d                   	pop    %ebp
  103302:	c3                   	ret    

00103303 <initFS>:
  103303:	55                   	push   %ebp
  103304:	89 e5                	mov    %esp,%ebp
  103306:	53                   	push   %ebx
  103307:	83 ec 04             	sub    $0x4,%esp
  10330a:	e8 36 d1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10330f:	05 f1 2c 00 00       	add    $0x2cf1,%eax
  103314:	83 ec 0c             	sub    $0xc,%esp
  103317:	c7 c2 60 80 10 00    	mov    $0x108060,%edx
  10331d:	52                   	push   %edx
  10331e:	89 c3                	mov    %eax,%ebx
  103320:	e8 24 d1 ff ff       	call   100449 <readSuperBlock>
  103325:	83 c4 10             	add    $0x10,%esp
  103328:	90                   	nop
  103329:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10332c:	c9                   	leave  
  10332d:	c3                   	ret    

0010332e <initSem>:
  10332e:	55                   	push   %ebp
  10332f:	89 e5                	mov    %esp,%ebp
  103331:	53                   	push   %ebx
  103332:	83 ec 10             	sub    $0x10,%esp
  103335:	e8 0b d1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10333a:	05 c6 2c 00 00       	add    $0x2cc6,%eax
  10333f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103346:	eb 7a                	jmp    1033c2 <initSem+0x94>
  103348:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10334e:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103351:	c1 e1 04             	shl    $0x4,%ecx
  103354:	01 ca                	add    %ecx,%edx
  103356:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10335c:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103362:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103365:	c1 e1 04             	shl    $0x4,%ecx
  103368:	01 ca                	add    %ecx,%edx
  10336a:	83 c2 04             	add    $0x4,%edx
  10336d:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103373:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103376:	89 d1                	mov    %edx,%ecx
  103378:	c1 e1 04             	shl    $0x4,%ecx
  10337b:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  103381:	01 ca                	add    %ecx,%edx
  103383:	8d 4a 08             	lea    0x8(%edx),%ecx
  103386:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  10338c:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  10338f:	c1 e3 04             	shl    $0x4,%ebx
  103392:	01 da                	add    %ebx,%edx
  103394:	83 c2 08             	add    $0x8,%edx
  103397:	89 0a                	mov    %ecx,(%edx)
  103399:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10339c:	89 d1                	mov    %edx,%ecx
  10339e:	c1 e1 04             	shl    $0x4,%ecx
  1033a1:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  1033a7:	01 ca                	add    %ecx,%edx
  1033a9:	8d 4a 08             	lea    0x8(%edx),%ecx
  1033ac:	c7 c2 c0 7e 10 00    	mov    $0x107ec0,%edx
  1033b2:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  1033b5:	c1 e3 04             	shl    $0x4,%ebx
  1033b8:	01 da                	add    %ebx,%edx
  1033ba:	83 c2 0c             	add    $0xc,%edx
  1033bd:	89 0a                	mov    %ecx,(%edx)
  1033bf:	ff 45 f8             	incl   -0x8(%ebp)
  1033c2:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  1033c6:	7e 80                	jle    103348 <initSem+0x1a>
  1033c8:	90                   	nop
  1033c9:	83 c4 10             	add    $0x10,%esp
  1033cc:	5b                   	pop    %ebx
  1033cd:	5d                   	pop    %ebp
  1033ce:	c3                   	ret    

001033cf <initDev>:
  1033cf:	55                   	push   %ebp
  1033d0:	89 e5                	mov    %esp,%ebp
  1033d2:	53                   	push   %ebx
  1033d3:	83 ec 10             	sub    $0x10,%esp
  1033d6:	e8 6a d0 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1033db:	05 25 2c 00 00       	add    $0x2c25,%eax
  1033e0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1033e7:	eb 7a                	jmp    103463 <initDev+0x94>
  1033e9:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  1033ef:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  1033f2:	c1 e1 04             	shl    $0x4,%ecx
  1033f5:	01 ca                	add    %ecx,%edx
  1033f7:	c7 02 01 00 00 00    	movl   $0x1,(%edx)
  1033fd:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103403:	8b 4d f8             	mov    -0x8(%ebp),%ecx
  103406:	c1 e1 04             	shl    $0x4,%ecx
  103409:	01 ca                	add    %ecx,%edx
  10340b:	83 c2 04             	add    $0x4,%edx
  10340e:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  103414:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103417:	89 d1                	mov    %edx,%ecx
  103419:	c1 e1 04             	shl    $0x4,%ecx
  10341c:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103422:	01 ca                	add    %ecx,%edx
  103424:	8d 4a 08             	lea    0x8(%edx),%ecx
  103427:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  10342d:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103430:	c1 e3 04             	shl    $0x4,%ebx
  103433:	01 da                	add    %ebx,%edx
  103435:	83 c2 08             	add    $0x8,%edx
  103438:	89 0a                	mov    %ecx,(%edx)
  10343a:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10343d:	89 d1                	mov    %edx,%ecx
  10343f:	c1 e1 04             	shl    $0x4,%ecx
  103442:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103448:	01 ca                	add    %ecx,%edx
  10344a:	8d 4a 08             	lea    0x8(%edx),%ecx
  10344d:	c7 c2 80 7e 10 00    	mov    $0x107e80,%edx
  103453:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103456:	c1 e3 04             	shl    $0x4,%ebx
  103459:	01 da                	add    %ebx,%edx
  10345b:	83 c2 0c             	add    $0xc,%edx
  10345e:	89 0a                	mov    %ecx,(%edx)
  103460:	ff 45 f8             	incl   -0x8(%ebp)
  103463:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  103467:	7e 80                	jle    1033e9 <initDev+0x1a>
  103469:	90                   	nop
  10346a:	83 c4 10             	add    $0x10,%esp
  10346d:	5b                   	pop    %ebx
  10346e:	5d                   	pop    %ebp
  10346f:	c3                   	ret    

00103470 <loadElf>:
  103470:	55                   	push   %ebp
  103471:	89 e5                	mov    %esp,%ebp
  103473:	56                   	push   %esi
  103474:	53                   	push   %ebx
  103475:	81 ec a0 00 00 00    	sub    $0xa0,%esp
  10347b:	e8 b5 d3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103480:	81 c3 80 2b 00 00    	add    $0x2b80,%ebx
  103486:	89 e0                	mov    %esp,%eax
  103488:	89 c6                	mov    %eax,%esi
  10348a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  103491:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103498:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10349e:	8b 40 14             	mov    0x14(%eax),%eax
  1034a1:	8d 50 ff             	lea    -0x1(%eax),%edx
  1034a4:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1034a7:	89 c2                	mov    %eax,%edx
  1034a9:	b8 10 00 00 00       	mov    $0x10,%eax
  1034ae:	48                   	dec    %eax
  1034af:	01 d0                	add    %edx,%eax
  1034b1:	b9 10 00 00 00       	mov    $0x10,%ecx
  1034b6:	ba 00 00 00 00       	mov    $0x0,%edx
  1034bb:	f7 f1                	div    %ecx
  1034bd:	6b c0 10             	imul   $0x10,%eax,%eax
  1034c0:	29 c4                	sub    %eax,%esp
  1034c2:	89 e0                	mov    %esp,%eax
  1034c4:	83 c0 00             	add    $0x0,%eax
  1034c7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1034ca:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1034d1:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
  1034d8:	00 00 00 
  1034db:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1034e2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1034e9:	83 ec 0c             	sub    $0xc,%esp
  1034ec:	8d 83 fc e2 ff ff    	lea    -0x1d04(%ebx),%eax
  1034f2:	50                   	push   %eax
  1034f3:	e8 f5 05 00 00       	call   103aed <putString>
  1034f8:	83 c4 10             	add    $0x10,%esp
  1034fb:	83 ec 0c             	sub    $0xc,%esp
  1034fe:	ff 75 08             	pushl  0x8(%ebp)
  103501:	e8 e7 05 00 00       	call   103aed <putString>
  103506:	83 c4 10             	add    $0x10,%esp
  103509:	83 ec 0c             	sub    $0xc,%esp
  10350c:	6a 0a                	push   $0xa
  10350e:	e8 a4 05 00 00       	call   103ab7 <putChar>
  103513:	83 c4 10             	add    $0x10,%esp
  103516:	ff 75 08             	pushl  0x8(%ebp)
  103519:	8d 85 58 ff ff ff    	lea    -0xa8(%ebp),%eax
  10351f:	50                   	push   %eax
  103520:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103526:	50                   	push   %eax
  103527:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10352d:	50                   	push   %eax
  10352e:	e8 52 d0 ff ff       	call   100585 <readInode>
  103533:	83 c4 10             	add    $0x10,%esp
  103536:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103539:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  10353d:	75 0a                	jne    103549 <loadElf+0xd9>
  10353f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103544:	e9 5c 01 00 00       	jmp    1036a5 <loadElf+0x235>
  103549:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10354c:	50                   	push   %eax
  10354d:	6a 00                	push   $0x0
  10354f:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  103555:	50                   	push   %eax
  103556:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10355c:	50                   	push   %eax
  10355d:	e8 18 cf ff ff       	call   10047a <readBlock>
  103562:	83 c4 10             	add    $0x10,%esp
  103565:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103568:	83 7d e0 ff          	cmpl   $0xffffffff,-0x20(%ebp)
  10356c:	75 0a                	jne    103578 <loadElf+0x108>
  10356e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103573:	e9 2d 01 00 00       	jmp    1036a5 <loadElf+0x235>
  103578:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10357b:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10357e:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103581:	8b 00                	mov    (%eax),%eax
  103583:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  103588:	74 0a                	je     103594 <loadElf+0x124>
  10358a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10358f:	e9 11 01 00 00       	jmp    1036a5 <loadElf+0x235>
  103594:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10359b:	eb 31                	jmp    1035ce <loadElf+0x15e>
  10359d:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1035a3:	8b 40 14             	mov    0x14(%eax),%eax
  1035a6:	0f af 45 ec          	imul   -0x14(%ebp),%eax
  1035aa:	89 c2                	mov    %eax,%edx
  1035ac:	8b 45 0c             	mov    0xc(%ebp),%eax
  1035af:	01 d0                	add    %edx,%eax
  1035b1:	50                   	push   %eax
  1035b2:	ff 75 ec             	pushl  -0x14(%ebp)
  1035b5:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  1035bb:	50                   	push   %eax
  1035bc:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  1035c2:	50                   	push   %eax
  1035c3:	e8 b2 ce ff ff       	call   10047a <readBlock>
  1035c8:	83 c4 10             	add    $0x10,%esp
  1035cb:	ff 45 ec             	incl   -0x14(%ebp)
  1035ce:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
  1035d4:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1035d7:	7c c4                	jl     10359d <loadElf+0x12d>
  1035d9:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1035dc:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1035df:	8b 40 1c             	mov    0x1c(%eax),%eax
  1035e2:	01 d0                	add    %edx,%eax
  1035e4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1035e7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1035ee:	e9 90 00 00 00       	jmp    103683 <loadElf+0x213>
  1035f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1035f6:	8b 00                	mov    (%eax),%eax
  1035f8:	83 f8 01             	cmp    $0x1,%eax
  1035fb:	75 7f                	jne    10367c <loadElf+0x20c>
  1035fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103600:	8b 50 08             	mov    0x8(%eax),%edx
  103603:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103606:	8b 40 04             	mov    0x4(%eax),%eax
  103609:	39 c2                	cmp    %eax,%edx
  10360b:	74 6f                	je     10367c <loadElf+0x20c>
  10360d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103614:	eb 2b                	jmp    103641 <loadElf+0x1d1>
  103616:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103619:	8b 50 04             	mov    0x4(%eax),%edx
  10361c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10361f:	01 c2                	add    %eax,%edx
  103621:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103624:	01 d0                	add    %edx,%eax
  103626:	89 c1                	mov    %eax,%ecx
  103628:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10362b:	8b 50 08             	mov    0x8(%eax),%edx
  10362e:	8b 45 0c             	mov    0xc(%ebp),%eax
  103631:	01 c2                	add    %eax,%edx
  103633:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103636:	01 d0                	add    %edx,%eax
  103638:	89 c2                	mov    %eax,%edx
  10363a:	8a 01                	mov    (%ecx),%al
  10363c:	88 02                	mov    %al,(%edx)
  10363e:	ff 45 f0             	incl   -0x10(%ebp)
  103641:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103644:	8b 50 10             	mov    0x10(%eax),%edx
  103647:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10364a:	39 c2                	cmp    %eax,%edx
  10364c:	77 c8                	ja     103616 <loadElf+0x1a6>
  10364e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103651:	8b 40 10             	mov    0x10(%eax),%eax
  103654:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103657:	eb 16                	jmp    10366f <loadElf+0x1ff>
  103659:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10365c:	8b 50 08             	mov    0x8(%eax),%edx
  10365f:	8b 45 0c             	mov    0xc(%ebp),%eax
  103662:	01 c2                	add    %eax,%edx
  103664:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103667:	01 d0                	add    %edx,%eax
  103669:	c6 00 00             	movb   $0x0,(%eax)
  10366c:	ff 45 f0             	incl   -0x10(%ebp)
  10366f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103672:	8b 50 14             	mov    0x14(%eax),%edx
  103675:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103678:	39 c2                	cmp    %eax,%edx
  10367a:	77 dd                	ja     103659 <loadElf+0x1e9>
  10367c:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  103680:	ff 45 ec             	incl   -0x14(%ebp)
  103683:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103686:	8b 40 2c             	mov    0x2c(%eax),%eax
  103689:	0f b7 c0             	movzwl %ax,%eax
  10368c:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  10368f:	0f 8c 5e ff ff ff    	jl     1035f3 <loadElf+0x183>
  103695:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103698:	8b 50 18             	mov    0x18(%eax),%edx
  10369b:	8b 45 10             	mov    0x10(%ebp),%eax
  10369e:	89 10                	mov    %edx,(%eax)
  1036a0:	b8 00 00 00 00       	mov    $0x0,%eax
  1036a5:	89 f4                	mov    %esi,%esp
  1036a7:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1036aa:	5b                   	pop    %ebx
  1036ab:	5e                   	pop    %esi
  1036ac:	5d                   	pop    %ebp
  1036ad:	c3                   	ret    

001036ae <loadUMain>:
  1036ae:	55                   	push   %ebp
  1036af:	89 e5                	mov    %esp,%ebp
  1036b1:	53                   	push   %ebx
  1036b2:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1036b8:	e8 78 d1 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1036bd:	81 c3 43 29 00 00    	add    $0x2943,%ebx
  1036c3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1036ca:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  1036d1:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  1036d8:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  1036df:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  1036e6:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1036ed:	00 00 00 
  1036f0:	8d 83 03 e3 ff ff    	lea    -0x1cfd(%ebx),%eax
  1036f6:	50                   	push   %eax
  1036f7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  1036fd:	50                   	push   %eax
  1036fe:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  103704:	50                   	push   %eax
  103705:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  10370b:	50                   	push   %eax
  10370c:	e8 74 ce ff ff       	call   100585 <readInode>
  103711:	83 c4 10             	add    $0x10,%esp
  103714:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10371b:	eb 31                	jmp    10374e <loadUMain+0xa0>
  10371d:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103723:	8b 40 14             	mov    0x14(%eax),%eax
  103726:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  10372a:	89 c2                	mov    %eax,%edx
  10372c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10372f:	01 d0                	add    %edx,%eax
  103731:	50                   	push   %eax
  103732:	ff 75 f4             	pushl  -0xc(%ebp)
  103735:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  10373b:	50                   	push   %eax
  10373c:	c7 c0 60 80 10 00    	mov    $0x108060,%eax
  103742:	50                   	push   %eax
  103743:	e8 32 cd ff ff       	call   10047a <readBlock>
  103748:	83 c4 10             	add    $0x10,%esp
  10374b:	ff 45 f4             	incl   -0xc(%ebp)
  10374e:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  103754:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  103757:	7c c4                	jl     10371d <loadUMain+0x6f>
  103759:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10375c:	8b 40 18             	mov    0x18(%eax),%eax
  10375f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103762:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103765:	8b 40 1c             	mov    0x1c(%eax),%eax
  103768:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10376b:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10376e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103771:	01 d0                	add    %edx,%eax
  103773:	8b 40 04             	mov    0x4(%eax),%eax
  103776:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103779:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103780:	eb 1c                	jmp    10379e <loadUMain+0xf0>
  103782:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103785:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103788:	01 c2                	add    %eax,%edx
  10378a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10378d:	01 d0                	add    %edx,%eax
  10378f:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  103792:	8b 55 e8             	mov    -0x18(%ebp),%edx
  103795:	01 ca                	add    %ecx,%edx
  103797:	8a 00                	mov    (%eax),%al
  103799:	88 02                	mov    %al,(%edx)
  10379b:	ff 45 f4             	incl   -0xc(%ebp)
  10379e:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  1037a5:	7e db                	jle    103782 <loadUMain+0xd4>
  1037a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1037aa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1037ad:	c9                   	leave  
  1037ae:	c3                   	ret    

001037af <initProc>:
  1037af:	55                   	push   %ebp
  1037b0:	89 e5                	mov    %esp,%ebp
  1037b2:	53                   	push   %ebx
  1037b3:	83 ec 14             	sub    $0x14,%esp
  1037b6:	e8 7a d0 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1037bb:	81 c3 45 28 00 00    	add    $0x2845,%ebx
  1037c1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1037c8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1037cf:	eb 3b                	jmp    10380c <initProc+0x5d>
  1037d1:	c7 c1 60 84 10 00    	mov    $0x108460,%ecx
  1037d7:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037da:	89 d0                	mov    %edx,%eax
  1037dc:	01 c0                	add    %eax,%eax
  1037de:	01 d0                	add    %edx,%eax
  1037e0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1037e7:	01 d0                	add    %edx,%eax
  1037e9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
  1037f0:	01 d0                	add    %edx,%eax
  1037f2:	89 c2                	mov    %eax,%edx
  1037f4:	c1 e2 04             	shl    $0x4,%edx
  1037f7:	01 d0                	add    %edx,%eax
  1037f9:	c1 e0 02             	shl    $0x2,%eax
  1037fc:	01 c8                	add    %ecx,%eax
  1037fe:	05 54 40 00 00       	add    $0x4054,%eax
  103803:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  103809:	ff 45 f4             	incl   -0xc(%ebp)
  10380c:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  103810:	7e bf                	jle    1037d1 <initProc+0x22>
  103812:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103818:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  10381e:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103824:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  10382a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103830:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  103836:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10383c:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  103842:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103848:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  10384f:	00 00 00 
  103852:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103858:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  10385f:	00 00 00 
  103862:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103868:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  10386f:	00 00 00 
  103872:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103878:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  10387f:	00 00 00 
  103882:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103888:	8d 90 8c 80 00 00    	lea    0x808c(%eax),%edx
  10388e:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103894:	89 90 d8 80 00 00    	mov    %edx,0x80d8(%eax)
  10389a:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038a0:	8d 90 d8 80 00 00    	lea    0x80d8(%eax),%edx
  1038a6:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038ac:	89 90 dc 80 00 00    	mov    %edx,0x80dc(%eax)
  1038b2:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038b8:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  1038bf:	00 00 00 
  1038c2:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038c8:	c7 80 e4 80 00 00 00 	movl   $0x0,0x80e4(%eax)
  1038cf:	00 00 00 
  1038d2:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038d8:	c7 80 e8 80 00 00 00 	movl   $0x0,0x80e8(%eax)
  1038df:	00 00 00 
  1038e2:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038e8:	c7 80 ec 80 00 00 01 	movl   $0x1,0x80ec(%eax)
  1038ef:	00 00 00 
  1038f2:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1038f8:	c7 80 d4 80 00 00 23 	movl   $0x23,0x80d4(%eax)
  1038ff:	00 00 00 
  103902:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103908:	c7 80 d0 80 00 00 00 	movl   $0x100000,0x80d0(%eax)
  10390f:	00 10 00 
  103912:	9c                   	pushf  
  103913:	5a                   	pop    %edx
  103914:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10391a:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  103920:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103926:	8b 80 cc 80 00 00    	mov    0x80cc(%eax),%eax
  10392c:	80 cc 02             	or     $0x2,%ah
  10392f:	89 c2                	mov    %eax,%edx
  103931:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103937:	89 90 cc 80 00 00    	mov    %edx,0x80cc(%eax)
  10393d:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103943:	c7 80 c8 80 00 00 1b 	movl   $0x1b,0x80c8(%eax)
  10394a:	00 00 00 
  10394d:	e8 5c fd ff ff       	call   1036ae <loadUMain>
  103952:	89 c2                	mov    %eax,%edx
  103954:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  10395a:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  103960:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103966:	c7 80 98 80 00 00 23 	movl   $0x23,0x8098(%eax)
  10396d:	00 00 00 
  103970:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103976:	c7 80 94 80 00 00 23 	movl   $0x23,0x8094(%eax)
  10397d:	00 00 00 
  103980:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103986:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  10398d:	00 00 00 
  103990:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  103996:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  10399d:	00 00 00 
  1039a0:	c7 c0 44 80 10 00    	mov    $0x108044,%eax
  1039a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1039ac:	c7 c0 60 84 10 00    	mov    $0x108460,%eax
  1039b2:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  1039b8:	e8 ef f3 ff ff       	call   102dac <enableInterrupt>
  1039bd:	cd 20                	int    $0x20
  1039bf:	e8 d7 f3 ff ff       	call   102d9b <waitForInterrupt>
  1039c4:	eb f9                	jmp    1039bf <initProc+0x210>

001039c6 <inByte>:
  1039c6:	55                   	push   %ebp
  1039c7:	89 e5                	mov    %esp,%ebp
  1039c9:	83 ec 14             	sub    $0x14,%esp
  1039cc:	e8 74 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039d1:	05 2f 26 00 00       	add    $0x262f,%eax
  1039d6:	8b 45 08             	mov    0x8(%ebp),%eax
  1039d9:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1039dd:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1039e0:	89 c2                	mov    %eax,%edx
  1039e2:	ec                   	in     (%dx),%al
  1039e3:	88 45 ff             	mov    %al,-0x1(%ebp)
  1039e6:	8a 45 ff             	mov    -0x1(%ebp),%al
  1039e9:	c9                   	leave  
  1039ea:	c3                   	ret    

001039eb <outByte>:
  1039eb:	55                   	push   %ebp
  1039ec:	89 e5                	mov    %esp,%ebp
  1039ee:	83 ec 08             	sub    $0x8,%esp
  1039f1:	e8 4f ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1039f6:	05 0a 26 00 00       	add    $0x260a,%eax
  1039fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1039fe:	8b 55 0c             	mov    0xc(%ebp),%edx
  103a01:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103a05:	88 d0                	mov    %dl,%al
  103a07:	88 45 f8             	mov    %al,-0x8(%ebp)
  103a0a:	8a 45 f8             	mov    -0x8(%ebp),%al
  103a0d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103a10:	ee                   	out    %al,(%dx)
  103a11:	90                   	nop
  103a12:	c9                   	leave  
  103a13:	c3                   	ret    

00103a14 <initSerial>:
  103a14:	55                   	push   %ebp
  103a15:	89 e5                	mov    %esp,%ebp
  103a17:	e8 29 ca ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103a1c:	05 e4 25 00 00       	add    $0x25e4,%eax
  103a21:	6a 00                	push   $0x0
  103a23:	68 f9 03 00 00       	push   $0x3f9
  103a28:	e8 be ff ff ff       	call   1039eb <outByte>
  103a2d:	83 c4 08             	add    $0x8,%esp
  103a30:	6a 80                	push   $0xffffff80
  103a32:	68 fb 03 00 00       	push   $0x3fb
  103a37:	e8 af ff ff ff       	call   1039eb <outByte>
  103a3c:	83 c4 08             	add    $0x8,%esp
  103a3f:	6a 01                	push   $0x1
  103a41:	68 f8 03 00 00       	push   $0x3f8
  103a46:	e8 a0 ff ff ff       	call   1039eb <outByte>
  103a4b:	83 c4 08             	add    $0x8,%esp
  103a4e:	6a 00                	push   $0x0
  103a50:	68 f9 03 00 00       	push   $0x3f9
  103a55:	e8 91 ff ff ff       	call   1039eb <outByte>
  103a5a:	83 c4 08             	add    $0x8,%esp
  103a5d:	6a 03                	push   $0x3
  103a5f:	68 fb 03 00 00       	push   $0x3fb
  103a64:	e8 82 ff ff ff       	call   1039eb <outByte>
  103a69:	83 c4 08             	add    $0x8,%esp
  103a6c:	6a c7                	push   $0xffffffc7
  103a6e:	68 fa 03 00 00       	push   $0x3fa
  103a73:	e8 73 ff ff ff       	call   1039eb <outByte>
  103a78:	83 c4 08             	add    $0x8,%esp
  103a7b:	6a 0b                	push   $0xb
  103a7d:	68 fc 03 00 00       	push   $0x3fc
  103a82:	e8 64 ff ff ff       	call   1039eb <outByte>
  103a87:	83 c4 08             	add    $0x8,%esp
  103a8a:	90                   	nop
  103a8b:	c9                   	leave  
  103a8c:	c3                   	ret    

00103a8d <serialIdle>:
  103a8d:	55                   	push   %ebp
  103a8e:	89 e5                	mov    %esp,%ebp
  103a90:	e8 b0 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103a95:	05 6b 25 00 00       	add    $0x256b,%eax
  103a9a:	68 fd 03 00 00       	push   $0x3fd
  103a9f:	e8 22 ff ff ff       	call   1039c6 <inByte>
  103aa4:	83 c4 04             	add    $0x4,%esp
  103aa7:	0f b6 c0             	movzbl %al,%eax
  103aaa:	83 e0 20             	and    $0x20,%eax
  103aad:	85 c0                	test   %eax,%eax
  103aaf:	0f 95 c0             	setne  %al
  103ab2:	0f b6 c0             	movzbl %al,%eax
  103ab5:	c9                   	leave  
  103ab6:	c3                   	ret    

00103ab7 <putChar>:
  103ab7:	55                   	push   %ebp
  103ab8:	89 e5                	mov    %esp,%ebp
  103aba:	83 ec 04             	sub    $0x4,%esp
  103abd:	e8 83 c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ac2:	05 3e 25 00 00       	add    $0x253e,%eax
  103ac7:	8b 45 08             	mov    0x8(%ebp),%eax
  103aca:	88 45 fc             	mov    %al,-0x4(%ebp)
  103acd:	90                   	nop
  103ace:	e8 ba ff ff ff       	call   103a8d <serialIdle>
  103ad3:	83 f8 01             	cmp    $0x1,%eax
  103ad6:	75 f6                	jne    103ace <putChar+0x17>
  103ad8:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  103adc:	50                   	push   %eax
  103add:	68 f8 03 00 00       	push   $0x3f8
  103ae2:	e8 04 ff ff ff       	call   1039eb <outByte>
  103ae7:	83 c4 08             	add    $0x8,%esp
  103aea:	90                   	nop
  103aeb:	c9                   	leave  
  103aec:	c3                   	ret    

00103aed <putString>:
  103aed:	55                   	push   %ebp
  103aee:	89 e5                	mov    %esp,%ebp
  103af0:	83 ec 10             	sub    $0x10,%esp
  103af3:	e8 4d c9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103af8:	05 08 25 00 00       	add    $0x2508,%eax
  103afd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103b04:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103b08:	74 30                	je     103b3a <putString+0x4d>
  103b0a:	eb 1e                	jmp    103b2a <putString+0x3d>
  103b0c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b0f:	8d 50 01             	lea    0x1(%eax),%edx
  103b12:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103b15:	89 c2                	mov    %eax,%edx
  103b17:	8b 45 08             	mov    0x8(%ebp),%eax
  103b1a:	01 d0                	add    %edx,%eax
  103b1c:	8a 00                	mov    (%eax),%al
  103b1e:	0f be c0             	movsbl %al,%eax
  103b21:	50                   	push   %eax
  103b22:	e8 90 ff ff ff       	call   103ab7 <putChar>
  103b27:	83 c4 04             	add    $0x4,%esp
  103b2a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103b2d:	8b 45 08             	mov    0x8(%ebp),%eax
  103b30:	01 d0                	add    %edx,%eax
  103b32:	8a 00                	mov    (%eax),%al
  103b34:	84 c0                	test   %al,%al
  103b36:	75 d4                	jne    103b0c <putString+0x1f>
  103b38:	eb 01                	jmp    103b3b <putString+0x4e>
  103b3a:	90                   	nop
  103b3b:	c9                   	leave  
  103b3c:	c3                   	ret    

00103b3d <putInt>:
  103b3d:	55                   	push   %ebp
  103b3e:	89 e5                	mov    %esp,%ebp
  103b40:	83 ec 30             	sub    $0x30,%esp
  103b43:	e8 fd c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103b48:	05 b8 24 00 00       	add    $0x24b8,%eax
  103b4d:	8d 45 dc             	lea    -0x24(%ebp),%eax
  103b50:	83 c0 1f             	add    $0x1f,%eax
  103b53:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103b56:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b59:	c6 00 00             	movb   $0x0,(%eax)
  103b5c:	ff 4d fc             	decl   -0x4(%ebp)
  103b5f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b62:	c6 00 0a             	movb   $0xa,(%eax)
  103b65:	8b 45 08             	mov    0x8(%ebp),%eax
  103b68:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103b6d:	99                   	cltd   
  103b6e:	f7 f9                	idiv   %ecx
  103b70:	89 d0                	mov    %edx,%eax
  103b72:	83 c0 30             	add    $0x30,%eax
  103b75:	ff 4d fc             	decl   -0x4(%ebp)
  103b78:	88 c2                	mov    %al,%dl
  103b7a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b7d:	88 10                	mov    %dl,(%eax)
  103b7f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103b82:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103b87:	f7 e9                	imul   %ecx
  103b89:	c1 fa 02             	sar    $0x2,%edx
  103b8c:	89 c8                	mov    %ecx,%eax
  103b8e:	c1 f8 1f             	sar    $0x1f,%eax
  103b91:	29 c2                	sub    %eax,%edx
  103b93:	89 d0                	mov    %edx,%eax
  103b95:	89 45 08             	mov    %eax,0x8(%ebp)
  103b98:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103b9c:	75 c7                	jne    103b65 <putInt+0x28>
  103b9e:	ff 75 fc             	pushl  -0x4(%ebp)
  103ba1:	e8 47 ff ff ff       	call   103aed <putString>
  103ba6:	83 c4 04             	add    $0x4,%esp
  103ba9:	90                   	nop
  103baa:	c9                   	leave  
  103bab:	c3                   	ret    

00103bac <outByte>:
  103bac:	55                   	push   %ebp
  103bad:	89 e5                	mov    %esp,%ebp
  103baf:	83 ec 08             	sub    $0x8,%esp
  103bb2:	e8 8e c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103bb7:	05 49 24 00 00       	add    $0x2449,%eax
  103bbc:	8b 45 08             	mov    0x8(%ebp),%eax
  103bbf:	8b 55 0c             	mov    0xc(%ebp),%edx
  103bc2:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103bc6:	88 d0                	mov    %dl,%al
  103bc8:	88 45 f8             	mov    %al,-0x8(%ebp)
  103bcb:	8a 45 f8             	mov    -0x8(%ebp),%al
  103bce:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103bd1:	ee                   	out    %al,(%dx)
  103bd2:	90                   	nop
  103bd3:	c9                   	leave  
  103bd4:	c3                   	ret    

00103bd5 <initTimer>:
  103bd5:	55                   	push   %ebp
  103bd6:	89 e5                	mov    %esp,%ebp
  103bd8:	83 ec 10             	sub    $0x10,%esp
  103bdb:	e8 65 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103be0:	05 20 24 00 00       	add    $0x2420,%eax
  103be5:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  103bec:	6a 34                	push   $0x34
  103bee:	6a 43                	push   $0x43
  103bf0:	e8 b7 ff ff ff       	call   103bac <outByte>
  103bf5:	83 c4 08             	add    $0x8,%esp
  103bf8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103bfb:	25 ff 00 00 80       	and    $0x800000ff,%eax
  103c00:	85 c0                	test   %eax,%eax
  103c02:	79 07                	jns    103c0b <initTimer+0x36>
  103c04:	48                   	dec    %eax
  103c05:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  103c0a:	40                   	inc    %eax
  103c0b:	0f be c0             	movsbl %al,%eax
  103c0e:	50                   	push   %eax
  103c0f:	6a 40                	push   $0x40
  103c11:	e8 96 ff ff ff       	call   103bac <outByte>
  103c16:	83 c4 08             	add    $0x8,%esp
  103c19:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103c1c:	85 c0                	test   %eax,%eax
  103c1e:	79 05                	jns    103c25 <initTimer+0x50>
  103c20:	05 ff 00 00 00       	add    $0xff,%eax
  103c25:	c1 f8 08             	sar    $0x8,%eax
  103c28:	0f be c0             	movsbl %al,%eax
  103c2b:	50                   	push   %eax
  103c2c:	6a 40                	push   $0x40
  103c2e:	e8 79 ff ff ff       	call   103bac <outByte>
  103c33:	83 c4 08             	add    $0x8,%esp
  103c36:	90                   	nop
  103c37:	c9                   	leave  
  103c38:	c3                   	ret    

00103c39 <outByte>:
  103c39:	55                   	push   %ebp
  103c3a:	89 e5                	mov    %esp,%ebp
  103c3c:	83 ec 08             	sub    $0x8,%esp
  103c3f:	e8 01 c8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c44:	05 bc 23 00 00       	add    $0x23bc,%eax
  103c49:	8b 45 08             	mov    0x8(%ebp),%eax
  103c4c:	8b 55 0c             	mov    0xc(%ebp),%edx
  103c4f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103c53:	88 d0                	mov    %dl,%al
  103c55:	88 45 f8             	mov    %al,-0x8(%ebp)
  103c58:	8a 45 f8             	mov    -0x8(%ebp),%al
  103c5b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103c5e:	ee                   	out    %al,(%dx)
  103c5f:	90                   	nop
  103c60:	c9                   	leave  
  103c61:	c3                   	ret    

00103c62 <initVga>:
  103c62:	55                   	push   %ebp
  103c63:	89 e5                	mov    %esp,%ebp
  103c65:	83 ec 08             	sub    $0x8,%esp
  103c68:	e8 d8 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103c6d:	05 93 23 00 00       	add    $0x2393,%eax
  103c72:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  103c79:	00 00 00 
  103c7c:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  103c83:	00 00 00 
  103c86:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  103c8d:	00 00 00 
  103c90:	e8 12 00 00 00       	call   103ca7 <clearScreen>
  103c95:	83 ec 08             	sub    $0x8,%esp
  103c98:	6a 00                	push   $0x0
  103c9a:	6a 00                	push   $0x0
  103c9c:	e8 5a 00 00 00       	call   103cfb <updateCursor>
  103ca1:	83 c4 10             	add    $0x10,%esp
  103ca4:	90                   	nop
  103ca5:	c9                   	leave  
  103ca6:	c3                   	ret    

00103ca7 <clearScreen>:
  103ca7:	55                   	push   %ebp
  103ca8:	89 e5                	mov    %esp,%ebp
  103caa:	83 ec 10             	sub    $0x10,%esp
  103cad:	e8 93 c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103cb2:	05 4e 23 00 00       	add    $0x234e,%eax
  103cb7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103cbe:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103cc5:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  103ccb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103cd2:	eb 1b                	jmp    103cef <clearScreen+0x48>
  103cd4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103cd7:	01 c0                	add    %eax,%eax
  103cd9:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103cdc:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103cdf:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103ce5:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  103ce9:	66 89 02             	mov    %ax,(%edx)
  103cec:	ff 45 fc             	incl   -0x4(%ebp)
  103cef:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  103cf6:	7e dc                	jle    103cd4 <clearScreen+0x2d>
  103cf8:	90                   	nop
  103cf9:	c9                   	leave  
  103cfa:	c3                   	ret    

00103cfb <updateCursor>:
  103cfb:	55                   	push   %ebp
  103cfc:	89 e5                	mov    %esp,%ebp
  103cfe:	83 ec 10             	sub    $0x10,%esp
  103d01:	e8 3f c7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103d06:	05 fa 22 00 00       	add    $0x22fa,%eax
  103d0b:	8b 55 08             	mov    0x8(%ebp),%edx
  103d0e:	89 d0                	mov    %edx,%eax
  103d10:	c1 e0 02             	shl    $0x2,%eax
  103d13:	01 d0                	add    %edx,%eax
  103d15:	c1 e0 04             	shl    $0x4,%eax
  103d18:	89 c2                	mov    %eax,%edx
  103d1a:	8b 45 0c             	mov    0xc(%ebp),%eax
  103d1d:	01 d0                	add    %edx,%eax
  103d1f:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103d22:	6a 0f                	push   $0xf
  103d24:	68 d4 03 00 00       	push   $0x3d4
  103d29:	e8 0b ff ff ff       	call   103c39 <outByte>
  103d2e:	83 c4 08             	add    $0x8,%esp
  103d31:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103d34:	0f be c0             	movsbl %al,%eax
  103d37:	50                   	push   %eax
  103d38:	68 d5 03 00 00       	push   $0x3d5
  103d3d:	e8 f7 fe ff ff       	call   103c39 <outByte>
  103d42:	83 c4 08             	add    $0x8,%esp
  103d45:	6a 0e                	push   $0xe
  103d47:	68 d4 03 00 00       	push   $0x3d4
  103d4c:	e8 e8 fe ff ff       	call   103c39 <outByte>
  103d51:	83 c4 08             	add    $0x8,%esp
  103d54:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103d57:	c1 f8 08             	sar    $0x8,%eax
  103d5a:	0f be c0             	movsbl %al,%eax
  103d5d:	50                   	push   %eax
  103d5e:	68 d5 03 00 00       	push   $0x3d5
  103d63:	e8 d1 fe ff ff       	call   103c39 <outByte>
  103d68:	83 c4 08             	add    $0x8,%esp
  103d6b:	90                   	nop
  103d6c:	c9                   	leave  
  103d6d:	c3                   	ret    

00103d6e <scrollScreen>:
  103d6e:	55                   	push   %ebp
  103d6f:	89 e5                	mov    %esp,%ebp
  103d71:	53                   	push   %ebx
  103d72:	83 ec 10             	sub    $0x10,%esp
  103d75:	e8 42 eb ff ff       	call   1028bc <__x86.get_pc_thunk.dx>
  103d7a:	81 c2 86 22 00 00    	add    $0x2286,%edx
  103d80:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103d87:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103d8e:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  103d94:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103d9b:	eb 2b                	jmp    103dc8 <scrollScreen+0x5a>
  103d9d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103da0:	01 c0                	add    %eax,%eax
  103da2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103da5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103da8:	05 00 80 0b 00       	add    $0xb8000,%eax
  103dad:	66 8b 00             	mov    (%eax),%ax
  103db0:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  103db4:	c7 c1 60 c9 12 00    	mov    $0x12c960,%ecx
  103dba:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  103dbd:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103dc1:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  103dc5:	ff 45 f8             	incl   -0x8(%ebp)
  103dc8:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  103dcf:	7e cc                	jle    103d9d <scrollScreen+0x2f>
  103dd1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  103dd8:	eb 2f                	jmp    103e09 <scrollScreen+0x9b>
  103dda:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103ddd:	01 c0                	add    %eax,%eax
  103ddf:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103de2:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103de5:	8d 48 50             	lea    0x50(%eax),%ecx
  103de8:	c7 c0 60 c9 12 00    	mov    $0x12c960,%eax
  103dee:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  103df2:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  103df6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103df9:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  103dff:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103e03:	66 89 01             	mov    %ax,(%ecx)
  103e06:	ff 45 f8             	incl   -0x8(%ebp)
  103e09:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  103e10:	7e c8                	jle    103dda <scrollScreen+0x6c>
  103e12:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  103e18:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  103e1f:	eb 1b                	jmp    103e3c <scrollScreen+0xce>
  103e21:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103e24:	01 c0                	add    %eax,%eax
  103e26:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103e29:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e2c:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  103e32:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  103e36:	66 89 02             	mov    %ax,(%edx)
  103e39:	ff 45 f8             	incl   -0x8(%ebp)
  103e3c:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  103e43:	7e dc                	jle    103e21 <scrollScreen+0xb3>
  103e45:	90                   	nop
  103e46:	83 c4 10             	add    $0x10,%esp
  103e49:	5b                   	pop    %ebx
  103e4a:	5d                   	pop    %ebp
  103e4b:	c3                   	ret    

00103e4c <waitForInterrupt>:
  103e4c:	55                   	push   %ebp
  103e4d:	89 e5                	mov    %esp,%ebp
  103e4f:	e8 f1 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e54:	05 ac 21 00 00       	add    $0x21ac,%eax
  103e59:	f4                   	hlt    
  103e5a:	90                   	nop
  103e5b:	5d                   	pop    %ebp
  103e5c:	c3                   	ret    

00103e5d <disableInterrupt>:
  103e5d:	55                   	push   %ebp
  103e5e:	89 e5                	mov    %esp,%ebp
  103e60:	e8 e0 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e65:	05 9b 21 00 00       	add    $0x219b,%eax
  103e6a:	fa                   	cli    
  103e6b:	90                   	nop
  103e6c:	5d                   	pop    %ebp
  103e6d:	c3                   	ret    

00103e6e <i2A>:
  103e6e:	55                   	push   %ebp
  103e6f:	89 e5                	mov    %esp,%ebp
  103e71:	83 ec 10             	sub    $0x10,%esp
  103e74:	e8 cc c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103e79:	05 87 21 00 00       	add    $0x2187,%eax
  103e7e:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  103e84:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103e87:	8b 45 08             	mov    0x8(%ebp),%eax
  103e8a:	b9 0a 00 00 00       	mov    $0xa,%ecx
  103e8f:	99                   	cltd   
  103e90:	f7 f9                	idiv   %ecx
  103e92:	89 d0                	mov    %edx,%eax
  103e94:	83 c0 30             	add    $0x30,%eax
  103e97:	ff 4d fc             	decl   -0x4(%ebp)
  103e9a:	88 c2                	mov    %al,%dl
  103e9c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103e9f:	88 10                	mov    %dl,(%eax)
  103ea1:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103ea4:	b8 67 66 66 66       	mov    $0x66666667,%eax
  103ea9:	f7 e9                	imul   %ecx
  103eab:	c1 fa 02             	sar    $0x2,%edx
  103eae:	89 c8                	mov    %ecx,%eax
  103eb0:	c1 f8 1f             	sar    $0x1f,%eax
  103eb3:	29 c2                	sub    %eax,%edx
  103eb5:	89 d0                	mov    %edx,%eax
  103eb7:	89 45 08             	mov    %eax,0x8(%ebp)
  103eba:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103ebe:	75 c7                	jne    103e87 <i2A+0x19>
  103ec0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ec3:	c9                   	leave  
  103ec4:	c3                   	ret    

00103ec5 <append>:
  103ec5:	55                   	push   %ebp
  103ec6:	89 e5                	mov    %esp,%ebp
  103ec8:	53                   	push   %ebx
  103ec9:	e8 77 c5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103ece:	05 32 21 00 00       	add    $0x2132,%eax
  103ed3:	eb 1a                	jmp    103eef <append+0x2a>
  103ed5:	8b 55 0c             	mov    0xc(%ebp),%edx
  103ed8:	8d 42 01             	lea    0x1(%edx),%eax
  103edb:	89 45 0c             	mov    %eax,0xc(%ebp)
  103ede:	8b 45 08             	mov    0x8(%ebp),%eax
  103ee1:	8b 00                	mov    (%eax),%eax
  103ee3:	8d 58 01             	lea    0x1(%eax),%ebx
  103ee6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  103ee9:	89 19                	mov    %ebx,(%ecx)
  103eeb:	8a 12                	mov    (%edx),%dl
  103eed:	88 10                	mov    %dl,(%eax)
  103eef:	8b 45 0c             	mov    0xc(%ebp),%eax
  103ef2:	8a 00                	mov    (%eax),%al
  103ef4:	84 c0                	test   %al,%al
  103ef6:	75 dd                	jne    103ed5 <append+0x10>
  103ef8:	90                   	nop
  103ef9:	5b                   	pop    %ebx
  103efa:	5d                   	pop    %ebp
  103efb:	c3                   	ret    

00103efc <displayMessage>:
  103efc:	55                   	push   %ebp
  103efd:	89 e5                	mov    %esp,%ebp
  103eff:	53                   	push   %ebx
  103f00:	83 ec 14             	sub    $0x14,%esp
  103f03:	e8 2d c9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  103f08:	81 c3 f8 20 00 00    	add    $0x20f8,%ebx
  103f0e:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  103f14:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f17:	ff 75 08             	pushl  0x8(%ebp)
  103f1a:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f1d:	50                   	push   %eax
  103f1e:	e8 a2 ff ff ff       	call   103ec5 <append>
  103f23:	83 c4 08             	add    $0x8,%esp
  103f26:	8d 83 10 e3 ff ff    	lea    -0x1cf0(%ebx),%eax
  103f2c:	50                   	push   %eax
  103f2d:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f30:	50                   	push   %eax
  103f31:	e8 8f ff ff ff       	call   103ec5 <append>
  103f36:	83 c4 08             	add    $0x8,%esp
  103f39:	ff 75 0c             	pushl  0xc(%ebp)
  103f3c:	e8 2d ff ff ff       	call   103e6e <i2A>
  103f41:	83 c4 04             	add    $0x4,%esp
  103f44:	50                   	push   %eax
  103f45:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f48:	50                   	push   %eax
  103f49:	e8 77 ff ff ff       	call   103ec5 <append>
  103f4e:	83 c4 08             	add    $0x8,%esp
  103f51:	8d 83 12 e3 ff ff    	lea    -0x1cee(%ebx),%eax
  103f57:	50                   	push   %eax
  103f58:	8d 45 f4             	lea    -0xc(%ebp),%eax
  103f5b:	50                   	push   %eax
  103f5c:	e8 64 ff ff ff       	call   103ec5 <append>
  103f61:	83 c4 08             	add    $0x8,%esp
  103f64:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  103f6a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f6d:	eb 1b                	jmp    103f8a <displayMessage+0x8e>
  103f6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103f72:	8a 00                	mov    (%eax),%al
  103f74:	0f be c0             	movsbl %al,%eax
  103f77:	83 ec 0c             	sub    $0xc,%esp
  103f7a:	50                   	push   %eax
  103f7b:	e8 37 fb ff ff       	call   103ab7 <putChar>
  103f80:	83 c4 10             	add    $0x10,%esp
  103f83:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103f86:	40                   	inc    %eax
  103f87:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103f8d:	8a 00                	mov    (%eax),%al
  103f8f:	84 c0                	test   %al,%al
  103f91:	75 dc                	jne    103f6f <displayMessage+0x73>
  103f93:	90                   	nop
  103f94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f97:	c9                   	leave  
  103f98:	c3                   	ret    

00103f99 <abort>:
  103f99:	55                   	push   %ebp
  103f9a:	89 e5                	mov    %esp,%ebp
  103f9c:	83 ec 08             	sub    $0x8,%esp
  103f9f:	e8 a1 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103fa4:	05 5c 20 00 00       	add    $0x205c,%eax
  103fa9:	e8 af fe ff ff       	call   103e5d <disableInterrupt>
  103fae:	83 ec 08             	sub    $0x8,%esp
  103fb1:	ff 75 0c             	pushl  0xc(%ebp)
  103fb4:	ff 75 08             	pushl  0x8(%ebp)
  103fb7:	e8 40 ff ff ff       	call   103efc <displayMessage>
  103fbc:	83 c4 10             	add    $0x10,%esp
  103fbf:	e8 88 fe ff ff       	call   103e4c <waitForInterrupt>
  103fc4:	eb f9                	jmp    103fbf <abort+0x26>

00103fc6 <stringChr>:
  103fc6:	55                   	push   %ebp
  103fc7:	89 e5                	mov    %esp,%ebp
  103fc9:	83 ec 14             	sub    $0x14,%esp
  103fcc:	e8 74 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  103fd1:	05 2f 20 00 00       	add    $0x202f,%eax
  103fd6:	8b 45 0c             	mov    0xc(%ebp),%eax
  103fd9:	88 45 ec             	mov    %al,-0x14(%ebp)
  103fdc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  103fe3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  103fe7:	75 31                	jne    10401a <stringChr+0x54>
  103fe9:	8b 45 10             	mov    0x10(%ebp),%eax
  103fec:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  103ff2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  103ff7:	eb 3c                	jmp    104035 <stringChr+0x6f>
  103ff9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  103ffc:	8b 45 08             	mov    0x8(%ebp),%eax
  103fff:	01 d0                	add    %edx,%eax
  104001:	8a 00                	mov    (%eax),%al
  104003:	38 45 ec             	cmp    %al,-0x14(%ebp)
  104006:	75 0f                	jne    104017 <stringChr+0x51>
  104008:	8b 45 10             	mov    0x10(%ebp),%eax
  10400b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10400e:	89 10                	mov    %edx,(%eax)
  104010:	b8 00 00 00 00       	mov    $0x0,%eax
  104015:	eb 1e                	jmp    104035 <stringChr+0x6f>
  104017:	ff 45 fc             	incl   -0x4(%ebp)
  10401a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10401d:	8b 45 08             	mov    0x8(%ebp),%eax
  104020:	01 d0                	add    %edx,%eax
  104022:	8a 00                	mov    (%eax),%al
  104024:	84 c0                	test   %al,%al
  104026:	75 d1                	jne    103ff9 <stringChr+0x33>
  104028:	8b 45 10             	mov    0x10(%ebp),%eax
  10402b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10402e:	89 10                	mov    %edx,(%eax)
  104030:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104035:	c9                   	leave  
  104036:	c3                   	ret    

00104037 <stringChrR>:
  104037:	55                   	push   %ebp
  104038:	89 e5                	mov    %esp,%ebp
  10403a:	83 ec 14             	sub    $0x14,%esp
  10403d:	e8 03 c4 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104042:	05 be 1f 00 00       	add    $0x1fbe,%eax
  104047:	8b 45 0c             	mov    0xc(%ebp),%eax
  10404a:	88 45 ec             	mov    %al,-0x14(%ebp)
  10404d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104054:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104058:	75 13                	jne    10406d <stringChrR+0x36>
  10405a:	8b 45 10             	mov    0x10(%ebp),%eax
  10405d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  104063:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104068:	eb 47                	jmp    1040b1 <stringChrR+0x7a>
  10406a:	ff 45 fc             	incl   -0x4(%ebp)
  10406d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104070:	8b 45 08             	mov    0x8(%ebp),%eax
  104073:	01 d0                	add    %edx,%eax
  104075:	8a 00                	mov    (%eax),%al
  104077:	84 c0                	test   %al,%al
  104079:	75 ef                	jne    10406a <stringChrR+0x33>
  10407b:	8b 45 10             	mov    0x10(%ebp),%eax
  10407e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104081:	89 10                	mov    %edx,(%eax)
  104083:	eb 21                	jmp    1040a6 <stringChrR+0x6f>
  104085:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104088:	8b 45 08             	mov    0x8(%ebp),%eax
  10408b:	01 d0                	add    %edx,%eax
  10408d:	8a 00                	mov    (%eax),%al
  10408f:	38 45 ec             	cmp    %al,-0x14(%ebp)
  104092:	75 0f                	jne    1040a3 <stringChrR+0x6c>
  104094:	8b 45 10             	mov    0x10(%ebp),%eax
  104097:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10409a:	89 10                	mov    %edx,(%eax)
  10409c:	b8 00 00 00 00       	mov    $0x0,%eax
  1040a1:	eb 0e                	jmp    1040b1 <stringChrR+0x7a>
  1040a3:	ff 4d fc             	decl   -0x4(%ebp)
  1040a6:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  1040aa:	79 d9                	jns    104085 <stringChrR+0x4e>
  1040ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1040b1:	c9                   	leave  
  1040b2:	c3                   	ret    

001040b3 <stringLen>:
  1040b3:	55                   	push   %ebp
  1040b4:	89 e5                	mov    %esp,%ebp
  1040b6:	83 ec 10             	sub    $0x10,%esp
  1040b9:	e8 87 c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040be:	05 42 1f 00 00       	add    $0x1f42,%eax
  1040c3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1040ca:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1040ce:	75 0a                	jne    1040da <stringLen+0x27>
  1040d0:	b8 00 00 00 00       	mov    $0x0,%eax
  1040d5:	eb 14                	jmp    1040eb <stringLen+0x38>
  1040d7:	ff 45 fc             	incl   -0x4(%ebp)
  1040da:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1040dd:	8b 45 08             	mov    0x8(%ebp),%eax
  1040e0:	01 d0                	add    %edx,%eax
  1040e2:	8a 00                	mov    (%eax),%al
  1040e4:	84 c0                	test   %al,%al
  1040e6:	75 ef                	jne    1040d7 <stringLen+0x24>
  1040e8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1040eb:	c9                   	leave  
  1040ec:	c3                   	ret    

001040ed <stringCmp>:
  1040ed:	55                   	push   %ebp
  1040ee:	89 e5                	mov    %esp,%ebp
  1040f0:	83 ec 10             	sub    $0x10,%esp
  1040f3:	e8 4d c3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1040f8:	05 08 1f 00 00       	add    $0x1f08,%eax
  1040fd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104104:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104108:	74 06                	je     104110 <stringCmp+0x23>
  10410a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10410e:	75 3e                	jne    10414e <stringCmp+0x61>
  104110:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104115:	eb 44                	jmp    10415b <stringCmp+0x6e>
  104117:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10411a:	8b 45 08             	mov    0x8(%ebp),%eax
  10411d:	01 d0                	add    %edx,%eax
  10411f:	8a 10                	mov    (%eax),%dl
  104121:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  104124:	8b 45 0c             	mov    0xc(%ebp),%eax
  104127:	01 c8                	add    %ecx,%eax
  104129:	8a 00                	mov    (%eax),%al
  10412b:	38 c2                	cmp    %al,%dl
  10412d:	74 07                	je     104136 <stringCmp+0x49>
  10412f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104134:	eb 25                	jmp    10415b <stringCmp+0x6e>
  104136:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104139:	8b 45 08             	mov    0x8(%ebp),%eax
  10413c:	01 d0                	add    %edx,%eax
  10413e:	8a 00                	mov    (%eax),%al
  104140:	84 c0                	test   %al,%al
  104142:	75 07                	jne    10414b <stringCmp+0x5e>
  104144:	b8 00 00 00 00       	mov    $0x0,%eax
  104149:	eb 10                	jmp    10415b <stringCmp+0x6e>
  10414b:	ff 45 fc             	incl   -0x4(%ebp)
  10414e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  104151:	3b 45 10             	cmp    0x10(%ebp),%eax
  104154:	75 c1                	jne    104117 <stringCmp+0x2a>
  104156:	b8 00 00 00 00       	mov    $0x0,%eax
  10415b:	c9                   	leave  
  10415c:	c3                   	ret    

0010415d <stringCpy>:
  10415d:	55                   	push   %ebp
  10415e:	89 e5                	mov    %esp,%ebp
  104160:	83 ec 10             	sub    $0x10,%esp
  104163:	e8 dd c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  104168:	05 98 1e 00 00       	add    $0x1e98,%eax
  10416d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  104174:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104178:	74 06                	je     104180 <stringCpy+0x23>
  10417a:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10417e:	75 2c                	jne    1041ac <stringCpy+0x4f>
  104180:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  104185:	eb 40                	jmp    1041c7 <stringCpy+0x6a>
  104187:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10418a:	8b 45 08             	mov    0x8(%ebp),%eax
  10418d:	01 d0                	add    %edx,%eax
  10418f:	8a 00                	mov    (%eax),%al
  104191:	84 c0                	test   %al,%al
  104193:	74 21                	je     1041b6 <stringCpy+0x59>
  104195:	8b 55 fc             	mov    -0x4(%ebp),%edx
  104198:	8b 45 08             	mov    0x8(%ebp),%eax
  10419b:	01 d0                	add    %edx,%eax
  10419d:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1041a0:	8b 55 0c             	mov    0xc(%ebp),%edx
  1041a3:	01 ca                	add    %ecx,%edx
  1041a5:	8a 00                	mov    (%eax),%al
  1041a7:	88 02                	mov    %al,(%edx)
  1041a9:	ff 45 fc             	incl   -0x4(%ebp)
  1041ac:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1041af:	3b 45 10             	cmp    0x10(%ebp),%eax
  1041b2:	75 d3                	jne    104187 <stringCpy+0x2a>
  1041b4:	eb 01                	jmp    1041b7 <stringCpy+0x5a>
  1041b6:	90                   	nop
  1041b7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041ba:	8b 45 0c             	mov    0xc(%ebp),%eax
  1041bd:	01 d0                	add    %edx,%eax
  1041bf:	c6 00 00             	movb   $0x0,(%eax)
  1041c2:	b8 00 00 00 00       	mov    $0x0,%eax
  1041c7:	c9                   	leave  
  1041c8:	c3                   	ret    

001041c9 <setBuffer>:
  1041c9:	55                   	push   %ebp
  1041ca:	89 e5                	mov    %esp,%ebp
  1041cc:	83 ec 14             	sub    $0x14,%esp
  1041cf:	e8 71 c2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1041d4:	05 2c 1e 00 00       	add    $0x1e2c,%eax
  1041d9:	8b 45 10             	mov    0x10(%ebp),%eax
  1041dc:	88 45 ec             	mov    %al,-0x14(%ebp)
  1041df:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1041e6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1041ea:	75 07                	jne    1041f3 <setBuffer+0x2a>
  1041ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1041f1:	eb 26                	jmp    104219 <setBuffer+0x50>
  1041f3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1041fa:	eb 10                	jmp    10420c <setBuffer+0x43>
  1041fc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1041ff:	8b 45 08             	mov    0x8(%ebp),%eax
  104202:	01 c2                	add    %eax,%edx
  104204:	8a 45 ec             	mov    -0x14(%ebp),%al
  104207:	88 02                	mov    %al,(%edx)
  104209:	ff 45 fc             	incl   -0x4(%ebp)
  10420c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10420f:	3b 45 0c             	cmp    0xc(%ebp),%eax
  104212:	7c e8                	jl     1041fc <setBuffer+0x33>
  104214:	b8 00 00 00 00       	mov    $0x0,%eax
  104219:	c9                   	leave  
  10421a:	c3                   	ret    

0010421b <kEntry>:
  10421b:	55                   	push   %ebp
  10421c:	89 e5                	mov    %esp,%ebp
  10421e:	53                   	push   %ebx
  10421f:	83 ec 04             	sub    $0x4,%esp
  104222:	e8 0e c6 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  104227:	81 c3 d9 1d 00 00    	add    $0x1dd9,%ebx
  10422d:	e8 e2 f7 ff ff       	call   103a14 <initSerial>
  104232:	e8 dd c7 ff ff       	call   100a14 <initIdt>
  104237:	e8 26 c6 ff ff       	call   100862 <initIntr>
  10423c:	e8 d7 eb ff ff       	call   102e18 <initSeg>
  104241:	e8 1c fa ff ff       	call   103c62 <initVga>
  104246:	e8 8a f9 ff ff       	call   103bd5 <initTimer>
  10424b:	e8 be e6 ff ff       	call   10290e <initKeyTable>
  104250:	e8 ae f0 ff ff       	call   103303 <initFS>
  104255:	e8 d4 f0 ff ff       	call   10332e <initSem>
  10425a:	e8 70 f1 ff ff       	call   1033cf <initDev>
  10425f:	e8 4b f5 ff ff       	call   1037af <initProc>
  104264:	90                   	nop
  104265:	83 c4 04             	add    $0x4,%esp
  104268:	5b                   	pop    %ebx
  104269:	5d                   	pop    %ebp
  10426a:	c3                   	ret    

0010426b <irqEmpty>:
  10426b:	6a 00                	push   $0x0
  10426d:	6a ff                	push   $0xffffffff
  10426f:	eb 39                	jmp    1042aa <asmDoIrq>

00104271 <irqErrorCode>:
  104271:	6a ff                	push   $0xffffffff
  104273:	eb 35                	jmp    1042aa <asmDoIrq>

00104275 <irqDoubleFault>:
  104275:	6a ff                	push   $0xffffffff
  104277:	eb 31                	jmp    1042aa <asmDoIrq>

00104279 <irqInvalidTSS>:
  104279:	6a ff                	push   $0xffffffff
  10427b:	eb 2d                	jmp    1042aa <asmDoIrq>

0010427d <irqSegNotPresent>:
  10427d:	6a ff                	push   $0xffffffff
  10427f:	eb 29                	jmp    1042aa <asmDoIrq>

00104281 <irqStackSegFault>:
  104281:	6a ff                	push   $0xffffffff
  104283:	eb 25                	jmp    1042aa <asmDoIrq>

00104285 <irqGProtectFault>:
  104285:	6a 0d                	push   $0xd
  104287:	eb 21                	jmp    1042aa <asmDoIrq>

00104289 <irqPageFault>:
  104289:	6a ff                	push   $0xffffffff
  10428b:	eb 1d                	jmp    1042aa <asmDoIrq>

0010428d <irqAlignCheck>:
  10428d:	6a ff                	push   $0xffffffff
  10428f:	eb 19                	jmp    1042aa <asmDoIrq>

00104291 <irqSecException>:
  104291:	6a ff                	push   $0xffffffff
  104293:	eb 15                	jmp    1042aa <asmDoIrq>

00104295 <irqTimer>:
  104295:	6a 00                	push   $0x0
  104297:	6a 20                	push   $0x20
  104299:	eb 0f                	jmp    1042aa <asmDoIrq>

0010429b <irqKeyboard>:
  10429b:	6a 00                	push   $0x0
  10429d:	6a 21                	push   $0x21
  10429f:	eb 09                	jmp    1042aa <asmDoIrq>

001042a1 <irqSyscall>:
  1042a1:	6a 00                	push   $0x0
  1042a3:	68 80 00 00 00       	push   $0x80
  1042a8:	eb 00                	jmp    1042aa <asmDoIrq>

001042aa <asmDoIrq>:
  1042aa:	60                   	pusha  
  1042ab:	1e                   	push   %ds
  1042ac:	06                   	push   %es
  1042ad:	0f a0                	push   %fs
  1042af:	0f a8                	push   %gs
  1042b1:	54                   	push   %esp
  1042b2:	e8 4c c9 ff ff       	call   100c03 <irqHandle>
  1042b7:	83 c4 04             	add    $0x4,%esp
  1042ba:	0f a9                	pop    %gs
  1042bc:	0f a1                	pop    %fs
  1042be:	07                   	pop    %es
  1042bf:	1f                   	pop    %ds
  1042c0:	61                   	popa   
  1042c1:	83 c4 04             	add    $0x4,%esp
  1042c4:	83 c4 04             	add    $0x4,%esp
  1042c7:	cf                   	iret   
